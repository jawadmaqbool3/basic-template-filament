<?php

namespace App\Models;

use App\Models\Scopes\PermissionScope;
use App\Traits\UuidTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Support\Facades\Auth;
use Spatie\Permission\Models\Permission as ModelsPermission;
use Spatie\Permission\PermissionRegistrar;

class Permission extends ModelsPermission
{
    use HasFactory, UuidTrait;
    protected $primaryKey = 'id';

    protected static function booted()
    {
        static::addGlobalScope(new PermissionScope(Auth::user()));
    }

    public function companies(): BelongsToMany
    {
        return $this->morphedByMany(
            Company::class,
            'model',
            config('permission.table_names.model_has_permissions'),
            app(PermissionRegistrar::class)->pivotPermission,
            config('permission.column_names.model_morph_key')
        );
    }
}
