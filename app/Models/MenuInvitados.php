<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MenuInvitados extends Model
{
    use HasFactory;

    protected $fillable = [
        'id',
        'invitado_id',
        'menu_id'
    ];

    protected $primaryKey = "id";
    protected $table = "menu_invitado";
}
