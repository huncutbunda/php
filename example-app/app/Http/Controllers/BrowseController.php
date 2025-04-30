<?php

namespace App\Http\Controllers;

use App\Models\Brands;
use App\Models\Cars;
use App\Models\Motors;
use Illuminate\Http\Request;

class BrowseController extends Controller
{
    public function cars(Request $request)
    {
        $brands = Brands::all();
        $query = Cars::with('brand');

        if ($request->has('brand_id') && $request->brand_id) {
            $query->where('brand_id', $request->brand_id);
        }

        $cars = $query->get();

        return view('browse.cars', compact('cars', 'brands'));
    }

    public function motorcycles(Request $request)
    {
        $brands = Brands::all();
        $query = Motors::with('brand');

        if ($request->has('brand_id') && $request->brand_id) {
            $query->where('brand_id', $request->brand_id);
        }

        $motorcycles = $query->get();

        return view('browse.motorcycles', compact('motorcycles', 'brands'));
    }
}
