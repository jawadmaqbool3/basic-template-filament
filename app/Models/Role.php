<?php

namespace App\Models;

use App\Models\Scopes\RoleScope;
use App\Traits\UuidTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Support\Facades\Auth;
use Spatie\Permission\Models\Role as ModelsRole;
use Spatie\Permission\PermissionRegistrar;

class Role extends ModelsRole
{
    use HasFactory, UuidTrait;
    protected $primaryKey = 'id';

    protected static function booted()
    {
        static::addGlobalScope(new RoleScope(Auth::user()));
    }
    public function companies(): BelongsToMany
    {
        return $this->morphedByMany(
            Company::class,
            'model',
            config('permission.table_names.model_has_roles'),
            app(PermissionRegistrar::class)->pivotRole,
            config('permission.column_names.model_morph_key')
        );
    }
}
