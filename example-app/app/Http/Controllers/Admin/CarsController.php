<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Brands;
use App\Models\Cars;
use App\Http\Requests\StoreCarsRequest;
use App\Http\Requests\UpdateCarsRequest;
use Illuminate\Http\Request;

class CarsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $cars = Cars::with('brand')->get();
        return view('admin.cars.index', compact('cars'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $brands = Brands::all();
        return view('admin.cars.create', compact('brands'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreCarsRequest $request)
    {
        $request->validate([
            'brand_id' => 'required|exists:brands,id',
            'model' => 'required',
            'horsepower' => 'nullable|integer',
            'price' => 'nullable|numeric',
            'color' => 'nullable|string'
        ]);

        Cars::create($request->all());

        return redirect()->route('admin.cars.index')->with('success', 'Car added successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(Cars $cars)
    {
        return view('admin.cars.show', compact('car'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Cars $cars)
    {
        $brands = Brands::all();
        return view('admin.cars.edit', compact('car', 'brands'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateCarsRequest $request, Cars $cars)
    {
        $cars->update($request->all());
        return redirect()->route('admin.cars.index')->with('success', 'Car updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Cars $cars)
    {
        $cars->delete();
        return redirect()->route('admin.cars.index')->with('success', 'Car deleted successfully');
    }
}
?>
