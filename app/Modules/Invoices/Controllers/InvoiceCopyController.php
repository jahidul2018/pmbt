<?php

/**
 * This file is part of BillingTrack.
 *
 *
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace BT\Modules\Invoices\Controllers;

use BT\Http\Controllers\Controller;
use BT\Modules\Clients\Models\Client;
use BT\Modules\CompanyProfiles\Models\CompanyProfile;
use BT\Modules\Groups\Models\Group;
use BT\Modules\Invoices\Models\Invoice;
use BT\Modules\Invoices\Models\InvoiceItem;
use BT\Modules\Invoices\Requests\InvoiceStoreRequest;
use BT\Support\DateFormatter;

class InvoiceCopyController extends Controller
{
    public function create()
    {
        $invoice = Invoice::find(request('invoice_id'));

        return view('invoices._modal_copy')
            ->with('invoice', $invoice)
            ->with('groups', Group::getList())
            ->with('companyProfiles', CompanyProfile::getList())
            ->with('invoice_date', DateFormatter::format())
            ->with('user_id', auth()->user()->id);
    }

    public function store(InvoiceStoreRequest $request)
    {
        $client = Client::firstOrCreateByUniqueName($request->input('client_name'));

        $fromInvoice = Invoice::find($request->input('invoice_id'));

        $toInvoice = Invoice::create([
            'client_id'          => $client->id,
            'company_profile_id' => $request->input('company_profile_id'),
            'invoice_date'       => DateFormatter::unformat(request('invoice_date')),
            'group_id'           => $request->input('group_id'),
            'currency_code'      => $fromInvoice->currency_code,
            'exchange_rate'      => $fromInvoice->exchange_rate,
            'terms'              => $fromInvoice->terms,
            'footer'             => $fromInvoice->footer,
            'template'           => $fromInvoice->template,
            'summary'            => $fromInvoice->summary,
            'discount'           => $fromInvoice->discount,
        ]);

        foreach ($fromInvoice->items as $item)
        {
            InvoiceItem::create([
                'invoice_id'    => $toInvoice->id,
                'name'          => $item->name,
                'description'   => $item->description,
                'quantity'      => $item->quantity,
                'price'         => $item->price,
                'tax_rate_id'   => $item->tax_rate_id,
                'tax_rate_2_id' => $item->tax_rate_2_id,
                'resource_table' => $item->resource_table,
                'resource_id'    => $item->resource_id,
                'display_order' => $item->display_order,
            ]);
        }

        // Copy the custom fields
        $custom = collect($fromInvoice->custom)->except('invoice_id')->toArray();
        $toInvoice->custom->update($custom);

        return response()->json(['id' => $toInvoice->id], 200);
    }
}
