<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Invitados extends Model
{
    use HasFactory;

    public $timestamps = false;

    protected $fillable = [
        'id',
        'titular_invitacion',
        'no_invitados'
    ];

    protected $primaryKey = "id";
    protected $table = "invitados";
}
