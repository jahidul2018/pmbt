@extends('layouts.master')

@section('javaScript')


    @include('item_lookups._js_item_lookups')

@stop

@section('content')

    <div id="div-quote-edit">

        @include('quotes._edit')

    </div>

@stop
