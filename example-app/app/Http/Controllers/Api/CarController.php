<?php

namespace App\Http\Controllers\Api;

use App\Models\Car;
use App\Models\Cars;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CarController extends Controller
{
    public function index(Request $request)
    {
        $query = Cars::with('brand');

        if ($request->has('brand_id')) {
            $query->where('brand_id', $request->brand_id);
        }

        return response()->json($query->get());
    }

    public function show($id)
    {
        return response()->json(Car::with('brand')->findOrFail($id));
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'brand_id' => 'required|exists:brands,id',
            'model_name' => 'required|string|max:255',
            'year' => 'required|integer',
            'price' => 'required|numeric',
        ]);

        $car = Cars::create($data);
        return response()->json($car, 201);
    }

    public function update(Request $request, $id)
    {
        $car = Cars::findOrFail($id);
        $car->update($request->all());

        return response()->json($car);
    }

    public function destroy($id)
    {
        Cars::destroy($id);
        return response()->json(null, 204);
    }
}
?>