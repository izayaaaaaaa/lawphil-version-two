<?php

namespace App\Http\Controllers;

use App\Models\Law;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class LawController extends Controller
{
    // Create a new law
    public function store(Request $request)
    {
        $law = Law::create($request->all());
        return response()->json($law, 201);
    }

    // Retrieve all laws
    public function index()
    {
        $laws = Law::all();
        return response()->json($laws);
    }

    // Retrieve a specific law
    public function show(Law $law)
    {
        return response()->json($law);
    }

    // Update a specific law
    public function update(Request $request, Law $law)
    {
        $law->update($request->all());
        return response()->json($law);
    }

    // Delete a specific law
    public function destroy(Law $law)
    {
        $law->delete();
        return response()->json(null, 204);
    }

    public function filter(Request $request)
    {
        $query = Law::query();

        if ($request->has('category') && $request->has('keyword')) {
            $keyword = $request->keyword;
            $query->where('category', $request->category)
                ->where(function ($q) use ($keyword) {
                    $q->where('title', 'like', '%' . $keyword . '%')
                        ->orWhere('content', 'like', '%' . $keyword . '%');
                });
        } elseif ($request->has('category')) {
            $query->where('category', $request->category);
        } elseif ($request->has('keyword')) {
            $keyword = $request->keyword;
            $query->where(function ($q) use ($keyword) {
                $q->where('title', 'like', '%' . $keyword . '%')
                    ->orWhere('content', 'like', '%' . $keyword . '%');
            });
        }

        // dd('Log statement reached');
        Log::info($query->toSql(), ['bindings' => $query->getBindings()]);

        $laws = $query->get();

        return response()->json($laws);
    }
}