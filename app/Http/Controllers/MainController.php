<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\{Invitados, MenuInvitados, Menu};

class MainController extends Controller
{
    /**
     * 
     */
    public function index()
    {
        $menu = Menu::all();

        return view('welcome')->with('menu', $menu);
    }

    /**
     * 
     */
    public function searchForGuests(Request $request)
    {
        $getInvitados = Invitados::where('titular_invitacion', 'LIKE', '%'. $request->search .'%')->get();

        return \response()->json($getInvitados);
    }

    /**
     * 
     */
    public function numberOfGuests($guest)
    {
        $status = 200;
        $getGuest = Invitados::where('titular_invitacion', 'LIKE', '%'. $guest .'%')->value('no_invitados');

        // return \response()->json($getInvitados);

        return response()->json([
            'status' => $status,
            'no_invitados' => $getGuest
        ]);
    }
}
