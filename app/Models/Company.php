<?php

namespace App\Models;

use App\Traits\UuidTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Permission\Traits\HasPermissions;
use Spatie\Permission\Traits\HasRoles;

class Company extends Model
{
    use HasFactory, UuidTrait, HasPermissions, HasRoles;
    protected $primaryKey = 'id';
    protected $guarded = ["id"];
}
