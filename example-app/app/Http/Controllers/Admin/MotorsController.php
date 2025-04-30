<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Brands;
use App\Models\Motors;
use App\Http\Requests\StoreMotorsRequest;
use App\Http\Requests\UpdateMotorsRequest;
use Illuminate\Http\Request;

class MotorsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $motors = Motors::with('brand')->get();
        return view('admin.motors.index', compact('motors'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $brands = Brands::all();
        return view('admin.motors.create', compact('brands'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreMotorsRequest $request)
    {
        $request->validate([
            'brand_id' => 'required|exists:brands,id',
            'model' => 'required',
            'horsepower' => 'nullable|integer',
            'price' => 'nullable|numeric',
            'color' => 'nullable|integer',
        ]);

        Motors::create($request->all());

        return redirect()->route('admin.motors.index')->with('success', 'Motorcycle added successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(Motors $motors)
    {
        return view('admin.motors.show', compact('motors'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Motors $motors)
    {
        $brands = Brands::all();
        return view('admin.motors.edit', compact('motor', 'brands'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateMotorsRequest $request, Motors $motors)
    {
        $motors->update($request->all());
        return redirect()->route('admin.motors.index')->with('success', 'Motorcycle updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Motors $motors)
    {
        $motors->delete();
        return redirect()->route('admin.motors.index')->with('success', 'Motorcycle deleted successfully');
    }
}
?>
