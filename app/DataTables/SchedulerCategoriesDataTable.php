<?php

namespace BT\DataTables;

use BT\Modules\Scheduler\Models\Category;
use Yajra\DataTables\Services\DataTable;
use Yajra\DataTables\Html\Column;

class SchedulerCategoriesDataTable extends DataTable
{
    /**
     * Build DataTable class.
     *
     * @param mixed $query Results from query() method.
     * @return \Yajra\DataTables\DataTableAbstract
     */
    public function dataTable($query)
    {
        return datatables()->eloquent($query)->addColumn('action', 'schedulecategories._actions')
            ->editColumn('text_color', function (Category $category) {
                return $category->text_color . '   <i class="fa fa-square" style="color:' . $category->text_color . '"></i>';
            })
            ->editColumn('bg_color', function (Category $category) {
                return $category->bg_color . '   <i class="fa fa-square" style="color:' . $category->bg_color . '"></i>';
            })
            ->rawColumns(['action', 'text_color', 'bg_color']);
    }


    /**
     * Get query source of dataTable.
     *
     * @param Category $model
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function query(Category $model)
    {
        return $model->select('schedule_categories.*');
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
            ->orderBy(0, 'asc');
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
                ->orderable(true)
                ->searchable(false)
                ->printable(false)
                ->exportable(false),
            Column::make('name')
                ->title(trans('bt.name'))
                ->orderable(true)
                ->searchable(true),
            Column::make('text_color')
                ->title(trans('bt.category_text_color'))
                ->searchable(false),
            Column::make('bg_color')
                ->title(trans('bt.category_bg_color'))
                ->searchable(false),
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
        return 'Categories_' . date('YmdHis');
    }
}
