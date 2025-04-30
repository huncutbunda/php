@extends('layouts.app')

@section('content')
<h1>Car Details</h1>
<ul>
    <li>Brand: {{ $car->brand->name }}</li>
    <li>Model: {{ $car->model }}</li>
    <li>Horsepower: {{ $car->horsepower }}</li>
    <li>Price: {{ $car->price }}</li>
    <li>Color: {{ $car->color }}</li>
    
</ul>
@endsection