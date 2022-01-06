

@include('quotes._js_quote_to_workorder')

<div class="modal fade" id="modal-quote-to-workorder">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">@lang('bt.quote_to_workorder')</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">

                <div id="modal-status-placeholder"></div>

                <form>

                    <div class="form-group d-flex align-items-center">
                        <label class="col-sm-4 text-right text">@lang('bt.date')</label>

                        <div class="col-sm-8">
                            {!! Form::text('workorder_date', $workorder_date, ['id' => 'to_workorder_date', 'class' => 'form-control']) !!}
                        </div>
                    </div>

                    <div class="form-group d-flex align-items-center">
                        <label class="col-sm-4 text-right text">@lang('bt.group')</label>

                        <div class="col-sm-8">
                            {!! Form::select('group_id', $groups, config('bt.workorderGroup'), ['id' => 'to_workorder_group_id', 'class' => 'form-control']) !!}
                        </div>
                    </div>

                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">@lang('bt.cancel')</button>
                <button type="button" id="btn-quote-to-workorder-submit"
                        class="btn btn-primary">@lang('bt.submit')</button>
            </div>
        </div>
    </div>
</div>
