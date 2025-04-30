@extends('layouts.app')

@section('content')
<h1>Add Motorcycle</h1>
<form action="{{ route('admin.motors.store') }}" method="POST">
    @csrf
    <label>Brand:</label>
    <select name="brand_id">
        @foreach ($brands as $brand)
            <option value="{{ $brand->id }}">{{ $brand->name }}</option>
        @endforeach
    </select><br>

    <label>Model Name:</label>
    <input type="text" name="model"><br>

    <label>Horsepower:</label>
    <input type="number" name="horsepower"><br>

    <label>Price:</label>
    <input type="number" step="0.01" name="price"><br>

    <label>Color:</label>
    <input type="text" name="color"><br>



    <button type="submit">Add Motorcycle</button>
</form>
@endsection