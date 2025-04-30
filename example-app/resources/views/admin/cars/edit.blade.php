@extends('layouts.app')

@section('content')
<h1>Edit Car</h1>
<form action="{{ route('admin.cars.update', $car) }}" method="POST">
    @csrf
    @method('PUT')

    <label>Brand:</label>
    <select name="brand_id">
        @foreach ($brands as $brand)
            <option value="{{ $brand->id }}" {{ $car->brand_id == $brand->id ? 'selected' : '' }}>{{ $brand->name }}</option>
        @endforeach
    </select><br>

    <label>Model Name:</label>
    <input type="text" name="model" value="{{ $car->model }}"><br>

    <label>Horsepower:</label>
    <input type="number" name="horsepower" value="{{ $car->horsepower }}"><br>

    <label>Price:</label>
    <input type="number" step="0.01" name="price" value="{{ $car->price }}"><br>

    <label>Color:</label>
    <input type="text" name="color" value="{{ $car->color }}"><br>



    <button type="submit">Update Car</button>
</form>
@endsection