<?php

namespace App\Exports;

use App\Models\{Invitados, MenuInvitados, Menu};
use DB;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\FromArray;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

class GuestsExport implements FromArray, WithHeadings, ShouldAutoSize
{
     /**
     * Write code on Method
     *
     * @return response()
     */
      public function array(): array
     {
          $getData = Invitados::get();
          $resume = null;

          foreach($getData as $data) {
               $getWillNoEat = MenuInvitados::where(['invitado_id' => $data->id, 'menu_id' => 1])->count() ?: '-';
               $getMixed = MenuInvitados::where(['invitado_id' => $data->id, 'menu_id' => 2])->count() ?: '-';
               $getVegetarian = MenuInvitados::where(['invitado_id' => $data->id, 'menu_id' => 3])->count() ?: '-';
               $getWillNotAttend = MenuInvitados::where(['invitado_id' => $data->id, 'menu_id' => 4])->count() ?: '-';

               $resume[] = [
                    'nombre_invitado' => $data->titular_invitacion,
                    'no_comera' => $getWillNoEat,
                    'mixto' => $getMixed,
                    'vegetariano' => $getVegetarian,
                    'no_asistira' => $getWillNotAttend
               ];
          }

          // dd($resume);

          return [
               $resume
          ];
     }

     /**
      * @return \Illuminate\Support\Collection
     */
     public function headings(): array
     {
          return [
               'Nombre del invitado',
               'No comerá',
               'Mixto',
               'Vegetariano',
               'No asistirá',
          ];
     }
}