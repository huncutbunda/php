<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Motors;
use Illuminate\Http\Request;

class MotorcycleController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $query = Motors::with('brand');

        if ($request->has('brand_id')) {
            $query->where('brand_id', $request->brand_id);
        }

        return response()->json($query->get());
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data = $request->validate([
            'brand_id' => 'required|exists:brands,id',
            'model_name' => 'required|string|max:255',
            'horsepower' => 'required|integer',
            'price' => 'required|numeric',
            'color' => 'required|string'
        ]);

        $motor = Motors::create($data);
        return response()->json($motor, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        return response()->json(Motors::with('brand')->findOrFail($id));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $motor = Motors::findOrFail($id);
        $motor->update($request->all());

        return response()->json($motor);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Motors::destroy($id);
        return response()->json(null, 204);
    }
}
