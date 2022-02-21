<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Exports\GuestsExport;
use Maatwebsite\Excel\Facades\Excel;

use App\Models\{Invitados, MenuInvitados, Menu};

class MainController extends Controller
{
    /**
     * 
     */
    public function index()
    {
        return view('welcome');
    }

    /**
     * 
     */
    public function searchForGuests(Request $request)
    {
        $validate = MenuInvitados::groupBy('invitado_id')->pluck('invitado_id');
        $getInvitados = Invitados::where('titular_invitacion', 'LIKE', '%'. $request->search .'%')->whereNotIn('id', $validate)->get();

        return \response()->json($getInvitados);
    }

    /**
     * 
     */
    public function allInformationGuests($guest)
    {
        $status = 200;
        $getGuest = Invitados::where('titular_invitacion', 'LIKE', '%'. $guest .'%')->get();

        foreach($getGuest as $guest) {
            $id = $guest->id;
            $titular_invitacion = $guest->titular_invitacion;
            $no_invitados = $guest->no_invitados;
        }

        // return \response()->json($getInvitados);

        return response()->json([
            'status' => $status,
            'id' => $id,
            'titular_invitacion' => $titular_invitacion,
            'no_invitados' => $no_invitados
        ]);
    }

    /**
     * 
     */
    public function setInformation(Request $request)
    {
        for($i = 1; $i <= $request->count; $i++) {
            $input = 'guest' . $request->guest . '-' . $i;
            
            $create = new MenuInvitados;
            $create->invitado_id = $request->input('guest');
            $create->menu_id = $request->input($input);
            $create->save();

        }

        return redirect('/');
    }

    /**
     * 
     */
    public function cancelGuests($guest)
    {
        $status = 200;
        $getGuest = Invitados::where('titular_invitacion', 'LIKE', '%'. $guest .'%')->value('id');

        $create = new MenuInvitados;
        $create->invitado_id = $getGuest;
        $create->menu_id = 4;
        $create->save();

        return response()->json([
            'status' => $status
        ]);
    }

    /**
     * 
     */
    public function export(){
        return Excel::download(new GuestsExport, 'listado_invitados.xlsx');
    }
}
