<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Items;

class ItemsController extends Controller
{
    public function index(Request $request, $id)
    {
        $user = $request->user();

        $items = Items::with(['favorites' => function($query) use ($user) {
                $query->where('favorites_usersID', $user->users_id);
            }])
            ->where("items_categories", $id)
            ->get();

        return response()->json([
            "status" => "success",
            "data"   => $items
        ]);
    }

    public function search(Request $request)
    {
        $request->validate(["search" => "required"]);
        $search = $request->search;

        $items = Items::where(function($query) use ($search) {
                    $query->where("items_name", "LIKE", "%$search%")
                        ->orWhere("items_name_ar", "LIKE", "%$search%");
                })
                ->selectRaw("*, (items_price - (items_price * items_discount / 100)) as discounted_price")
                ->get();

        if ($items->isEmpty()) {
            return response()->json(["status" => "failure", "message" => "No items found"]);
        }

        return response()->json([
            "status" => "success",
            "data"   => $items
        ]);
    }
}