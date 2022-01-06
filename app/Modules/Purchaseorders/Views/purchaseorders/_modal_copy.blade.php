@include('purchaseorders._js_copy')

<div class="modal fade" id="modal-copy-purchaseorder">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">@lang('bt.copy')</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">

                <div id="modal-status-placeholder"></div>

                <form>

                    <div class="form-group d-flex align-items-center">
                        <label class="col-sm-4 text-right text">@lang('bt.vendor')</label>

                        <div class="col-sm-8">
                            {!! Form::text('vendor_name', $purchaseorder->vendor->name, ['id' => 'copy_vendor_name', 'class' => 'form-control vendor-lookup', 'autocomplete' => 'off']) !!}
                        </div>
                    </div>

                    <div class="form-group d-flex align-items-center">
                        <label class="col-sm-4 text-right text">@lang('bt.date')</label>

                        <div class="col-sm-8">
                            {!! Form::text('purchaseorder_date', date(config('bt.dateFormat')), ['id' => 'copy_purchaseorder_date', 'class' => 'form-control']) !!}
                        </div>
                    </div>

                    <div class="form-group d-flex align-items-center">
                        <label class="col-sm-4 text-right text">@lang('bt.company_profile')</label>

                        <div class="col-sm-8">
                            {!! Form::select('company_profile_id', $companyProfiles, config('bt.defaultCompanyProfile'),
                            ['id' => 'copy_company_profile_id', 'class' => 'form-control']) !!}
                        </div>
                    </div>

                    <div class="form-group d-flex align-items-center">
                        <label class="col-sm-4 text-right text">@lang('bt.group')</label>

                        <div class="col-sm-8">
                            {!! Form::select('group_id', $groups, $purchaseorder->group_id, ['id' => 'copy_group_id', 'class' => 'form-control']) !!}
                        </div>
                    </div>

                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">@lang('bt.cancel')</button>
                <button type="button" id="btn-copy-purchaseorder-submit"
                        class="btn btn-primary">@lang('bt.submit')</button>
            </div>
        </div>
    </div>
</div>
