<?php
namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;

use App\Models\Order;
use App\Models\Cart;
use App\Models\Coupon;
use App\Models\Address;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class OrderController extends Controller
{  
    public function checkout(Request $request)
    {
        $request->validate([
            'usersid'            => "required",
            'addressesid'        => "required",
            'type'               => "required", // 0 => Delivery, 1 => Drive Thru
            'pricedelivery'      => "required",
            'price'              => "required",
            'couponsid'          => "required", 
            'paymentmethod'       => "required",
        ]);

        try {
            return DB::transaction(function () use ($request) {
                
                $now = now(); 
                
                $totalPrice = $request->price;
                
                $coupon = Coupon::where("coupons_id", $request->couponsid)
                    ->where("coupons_expiredate", ">", $now) 
                    ->where("coupons_count", ">", 0)
                    ->first();

                if (!$coupon && $request->couponsid != 0) {
                    return response()->json([
                    "status" => "failure",
                    "message" => "coupon"
                    ]);
                }
                if($coupon){
                    $totalPrice = $totalPrice - ($totalPrice * ($coupon->coupons_discount / 100));     
                    $coupon->decrement('coupons_count'); 
                }

                $priceDelivery = $request->pricedelivery;
                if($request->type == "1"){
                    $priceDelivery = "0";
                }
                

                $totalPrice = $totalPrice + $priceDelivery;

                $addressID = $request->addressesid == "0" ? null : $request->addressesid;

                $order = Order::create([
                    "orders_usersID"        => $request->usersid,
                    "orders_addressesID"    => $addressID,
                    "orders_type"           => $request->type,
                    "orders_price_delivery" => $priceDelivery,
                    "orders_price"          => $request->price,
                    "orders_total_price"    => $totalPrice,
                    "orders_couponID"         => $request->couponsid,
                    "orders_payment_method" => $request->paymentmethod,
                ]);

                 
                $orderID = $order->orders_id;

                Cart::where("carts_usersID", $request->usersid)
                    ->where("carts_ordersID", 0)
                    ->update(['carts_ordersID' => $orderID]);

                return response()->json([
                    "status" => "success",
                    "message" => "تم الطلب بنجاح"
                ]);
            });
        } catch (\Exception $e) {
            return response()->json([
                "status" => "failure",
                "message" => "خطأ في السيرفر: " . $e->getMessage()
            ], 500);
        }
    }
    public function pending(Request $request)
    {
        $request->validate([
            'usersid' => "required",
        ]);

        $orders = Order::with('coupon')
            ->where("orders_usersID", $request->usersid)
            ->get();

        if ($orders->isEmpty()) {
            return response()->json([
                "status" => "failure",
                "message" => "No Data"
            ]);
        }

        $orders->map(function($order) {

            $couponDiscount = 0;
            if ($order->coupon) {
                $couponDiscount = $order->coupon->coupons_discount;
            }
            
            $order->orders_couponID_discount = $couponDiscount;
            return $order;
        });

        return response()->json([
            "status" => "success",
            "data" => $orders
        ]);
    }

    public function details(Request $request)
    {
        $request->validate([
            'usersid'   => "required",
            'ordersid'  => "required",
            'addressid' => "required",
        ]);

        $cartAll = Cart::with("item")
                    ->where("carts_usersID", $request->usersid)
                    ->where("carts_ordersID", $request->ordersid)
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

        $address = 0;
        if ($request->addressid != "0") {
            $address = Address::where("addresses_id", $request->addressid)->first();
        }

        if ($itemsData->isEmpty()) {
            return response()->json([
                "status"  => "failure",
                "message" => "No Data"
            ]);
        }

        return response()->json([
            "status"     => "success",
            "data"       => $itemsData,
            "totalprice" => $totalPriceAll,
            "address"    => $address, 
            "countall"   => $totalCount
        ]);
    }
}
