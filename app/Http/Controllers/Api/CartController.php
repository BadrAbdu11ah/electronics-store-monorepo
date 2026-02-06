<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;

use App\Models\Cart;
use App\Models\Items;
use Illuminate\Http\Request;


class CartController extends Controller
{
    public function add(Request $request)
    {
        $request->validate([
            "usersid" => "required",
            "itemsid" => "required"
        ]);

        $cart = Cart::create([
            "carts_usersID" => $request->usersid,
            "carts_itemsID" => $request->itemsid
        ]);

        if (!$cart) {
            return response()->json(["status" => "failure"], 500);
        }

        return response()->json(["status" => "success"]);
    }

    public function remove(Request $request)
    {
        $request->validate([
            "usersid" => "required",
            "itemsid" => "required"
        ]);

        // البحث عن السجل وحذفه
        $cart = Cart::where("carts_usersID", $request->usersid)
                    ->where("carts_itemsID", $request->itemsid)
                    ->where("carts_ordersID", 0)
                    ->limit(1)
                    ->delete();

        if (!$cart) {
           return response()->json(["status" => "noData"]); 
        }

        return response()->json(["status" => "success"]);
    }

    public function getCountItems(Request $request)
    {
        $request->validate([
            "usersid" => "required",
            "itemsid" => "required"
        ]);
        $countCart = Cart::where("carts_usersID", $request->usersid)
                        ->where("carts_itemsID", $request->itemsid)
                        ->where("carts_ordersID", 0)
                        ->count();
        $items = Items::where("items_id", $request->itemsid)
                            ->first();
        if (!$items) {
            return response()->json([
                "status" => "failure", 
                "errorKey" => "noData"
            ]);
        }

        return response()->json([
            "status" => "success", 
            "count"  => $countCart,
            "data"  => $items
            ]);
    }

    public function view(Request $request)
    {
        $request->validate([
            "usersid" => "required",
        ]);

        $cartAll = Cart::with("item")
                    ->where("carts_usersID", $request->usersid)
                    ->where("carts_ordersID", 0)
                    ->get();

        $itemsData = $cartAll->groupBy('carts_itemsID')->map(function ($group) {
            $item       = $group->first();
            $unitPrice  = $item->item->discounted_price;
            $countItems = $group->count();
            
            $totalItemPrice = $countItems * $unitPrice;

            return [
                'item'             => $item->item,
                'count_items'      => $countItems,
                'item_price'       => $unitPrice,
                'total_item_price' => $totalItemPrice, 
            ];
        })->values();

        $totalPriceAll = $cartAll->sum(function($cart) {
            return $cart->item->discounted_price;
        });

        $totalCount = $cartAll->count();

        return response()->json([
            "status"     => "success",
            "data"       => $itemsData,
            "totalprice" => $totalPriceAll, 
            "countall"   => $totalCount
        ]);
    }
}
