<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Categories;
use App\Models\Items;


class HomeController extends Controller
{
    public function home()
    {
        $categories = Categories::all();

        $items = Items::where("items_discount", ">", 0)->get();

        if ($categories->isEmpty()) {
            return response()->json(["status" => "failure", "errorKey" => "noData"]);
        }

        return response()->json([
            "status" => "success", 
            "categories" => $categories,
            "items" => $items
        ]);
    }
}
