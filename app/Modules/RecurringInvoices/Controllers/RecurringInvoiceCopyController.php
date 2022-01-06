<?php

/**
 * This file is part of BillingTrack.
 *
 *
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace BT\Modules\RecurringInvoices\Controllers;

use BT\Http\Controllers\Controller;
use BT\Modules\Clients\Models\Client;
use BT\Modules\CompanyProfiles\Models\CompanyProfile;
use BT\Modules\Groups\Models\Group;
use BT\Modules\RecurringInvoices\Models\RecurringInvoice;
use BT\Modules\RecurringInvoices\Models\RecurringInvoiceItem;
use BT\Modules\RecurringInvoices\Requests\RecurringInvoiceStoreRequest;
use BT\Support\DateFormatter;
use BT\Support\Frequency;

class RecurringInvoiceCopyController extends Controller
{
    public function create()
    {
        return view('recurring_invoices._modal_copy')
            ->with('recurringInvoice', RecurringInvoice::find(request('recurring_invoice_id')))
            ->with('groups', Group::getList())
            ->with('companyProfiles', CompanyProfile::getList())
            ->with('frequencies', Frequency::lists());
    }

    public function store(RecurringInvoiceStoreRequest $request)
    {
        $client = Client::firstOrCreateByUniqueName($request->input('client_name'));

        $fromRecurringInvoice = RecurringInvoice::find($request->input('recurring_invoice_id'));

        $toRecurringInvoice = RecurringInvoice::create([
            'client_id'           => $client->id,
            'company_profile_id'  => $request->input('company_profile_id'),
            'group_id'            => $request->input('group_id'),
            'currency_code'       => $fromRecurringInvoice->currency_code,
            'exchange_rate'       => $fromRecurringInvoice->exchange_rate,
            'terms'               => $fromRecurringInvoice->terms,
            'footer'              => $fromRecurringInvoice->footer,
            'template'            => $fromRecurringInvoice->template,
            'summary'             => $fromRecurringInvoice->summary,
            'discount'            => $fromRecurringInvoice->discount,
            'recurring_frequency' => $request->input('recurring_frequency'),
            'recurring_period'    => $request->input('recurring_period'),
            'next_date'           => DateFormatter::unformat($request->input('next_date')),
            'stop_date'           => ($request->input('stop_date') ? DateFormatter::unformat($request->input('stop_date')) : '0000-00-00'),
        ]);

        foreach ($fromRecurringInvoice->items as $item)
        {
            RecurringInvoiceItem::create([
                'recurring_invoice_id' => $toRecurringInvoice->id,
                'name'                 => $item->name,
                'description'          => $item->description,
                'quantity'             => $item->quantity,
                'price'                => $item->price,
                'tax_rate_id'          => $item->tax_rate_id,
                'tax_rate_2_id'        => $item->tax_rate_2_id,
                'resource_table'       => $item->resource_table,
                'resource_id'          => $item->resource_id,
                'display_order'        => $item->display_order,
            ]);
        }

        // Copy the custom fields
        $custom = collect($fromRecurringInvoice->custom)->except('recurring_invoice_id')->toArray();
        $toRecurringInvoice->custom->update($custom);

        return response()->json(['success' => true, 'url' => route('recurringInvoices.edit', [$toRecurringInvoice->id])], 200);
    }
}
