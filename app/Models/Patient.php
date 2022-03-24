<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Patient extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'last_name',
        'middle_name',
        'first_name',
        'sex',
        'date_of_birth',
        'mobile_number'
    ];
}
