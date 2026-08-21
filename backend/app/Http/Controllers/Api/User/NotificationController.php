<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller; 
use App\Models\Notification;
use Illuminate\Http\Request;

class NotificationController extends Controller
{
    /**
     * عرض جميع إشعارات المستخدم المسجل حالياً
     * GET /api/notification/view
     */
    public function index(Request $request)
    {
        $notifications = $request->user()->notifications()->latest()->get();

        if ($notifications->isEmpty()) {
            return response()->json([
                "status"  => "success", 
                "message" => "لا توجد إشعارات",
                "data"    => []
            ]);
        }

        return response()->json([
            "status" => "success", 
            "data"   => $notifications
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Notification $notification)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Notification $notification)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Notification $notification)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Notification $notification)
    {
        //
    }
}
