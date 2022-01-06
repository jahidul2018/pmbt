<?php

namespace BT\DataTables;

use BT\Modules\Scheduler\Models\Schedule;
use Yajra\DataTables\Services\DataTable;
use Yajra\DataTables\Html\Column;

class RecurringEventsDataTable extends DataTable
{
    /**
     * Build DataTable class.
     *
     * @param mixed $query Results from query() method.
     * @return \Yajra\DataTables\DataTableAbstract
     */
    public function dataTable($query)
    {
        return datatables()->eloquent($query)->addColumn('action', 'partials._actions_recurr')
            ->editColumn('id', function (Schedule $schedule) {
                return '<input type="checkbox" class="bulk-record" data-id="' . $schedule->id . '">';
            })
            //->orderColumn('rule_start', 'schedule_occurrences.start_date $1')
            ->rawColumns(['action', 'id']);
    }


    /**
     * Get query source of dataTable.
     *
     * @param Schedule $model
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function query(Schedule $model)
    {
        $models = $model->with(['category'])->where('isRecurring', '=', '1')
            ->select('schedule.*');
        app('debugbar')->info($models->get());
        return $models;
    }

    /**
     * Optional method if you want to use html builder.
     *
     * @return \Yajra\DataTables\Html\Builder
     */
    public function html()
    {
        return $this->builder()
            ->columns($this->getColumns())
            ->minifiedAjax()
            ->orderBy(3, 'desc')
            ->lengthMenu([
                [10, 25, 50, 100, -1],
                ['10', '25', '50', '100', 'All']
            ]);
    }

    /**
     * Get columns.
     *
     * @return array
     */
    protected function getColumns()
    {
        return [
            Column::make('id')
                ->orderable(false)
                ->searchable(false)
                ->printable(false)
                ->exportable(false)
                ->className('bulk-record')
            ,
            Column::make('title')
                ->title(trans('bt.title')),
            Column::make('description')
                ->title(trans('bt.description')),
            Column::make('rrule')
                ->title(trans('bt.start_date'))
                ->data('rule_start')
                ->orderable(true)
                ->searchable(false),
            Column::make('frequency')
                ->title(trans('bt.frequency'))
                ->data('text_trans')
                ->orderable(false)
                ->searchable(false),
            Column::make('category')
                ->name('category.name')
                ->title(trans('bt.category'))
                ->data('category.name'),
            Column::computed('action')
                ->exportable(false)
                ->printable(false)
                ->width(80)
                ->addClass('text-center'),
        ];
    }

    /**
     * Get filename for export.
     *
     * @return string
     */
    protected function filename()
    {
        return 'Schedule_' . date('YmdHis');
    }
}
