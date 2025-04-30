@extends('layouts.app')

@section('content')
<h1>Edit Motorcycle</h1>
<form action="{{ route('admin.motors.update', $motors) }}" method="POST">
    @csrf
    @method('PUT')

    <label>Brand:</label>
    <select name="brand_id">
        @foreach ($brands as $brand)
            <option value="{{ $brand->id }}" {{ $motors->brand_id == $brand->id ? 'selected' : '' }}>{{ $brand->name }}</option>
        @endforeach
    </select><br>

    <label>Model Name:</label>
    <input type="text" name="model" value="{{ $motors->model }}"><br>

    <label>Horsepower:</label>
    <input type="number" name="horsepower" value="{{ $motors->horsepower }}"><br>

    <label>Price:</label>
    <input type="number" step="0.01" name="price" value="{{ $motors->price }}"><br>

    <label>Color:</label>
    <input type="text" name="color" value="{{ $motors->color }}"><br>



    <button type="submit">Update Motorcycle</button>
</form>
@endsection
