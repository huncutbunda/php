@extends('layouts.app')

@section('content')
<h1>Motorcycle Details</h1>
<ul>
    <li>Brand: {{ $motors->brand->name }}</li>
    <li>Model: {{ $motors->model }}</li>
    <li>Horsepower: {{ $motors->horsepower }}</li>
    <li>Price: {{ $motors->price }}</li>
    <li>Color: {{ $motors->color }}</li>
</ul>
@endsection