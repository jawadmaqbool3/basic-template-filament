<?php

namespace App\Policies;

use App\Models\Permission;
use App\Models\User;
use Illuminate\Auth\Access\Response;

class PermissionPolicy
{
    public  $permissions = [
        'show_permissions' => 'show permissions',
        'create_permissions' => 'create permissions',
        'edit_permissions' => 'edit permissions',
        'delete_permissions' => 'delete permissions',
    ];
    /**
     * Determine whether the user can view any models.
     */
    public function viewAny(User $user): bool
    {
        return $user->can($this->permissions["show_permissions"]);
        return true;
    }

    /**
     * Determine whether the user can view the model.
     */
    public function view(User $user, Permission $permission): bool
    {
        return $user->can($this->permissions["show_permissions"]);
        return true;
    }

    /**
     * Determine whether the user can create models.
     */
    public function create(User $user): bool
    {
        return $user->can($this->permissions["create_permissions"]);
        return true;
    }

    /**
     * Determine whether the user can update the model.
     */
    public function update(User $user, Permission $permission): bool
    {
        return $user->can($this->permissions["edit_permissions"]);
        return true;
    }

    /**
     * Determine whether the user can delete the model.
     */
    public function delete(User $user, Permission $permission): bool
    {
        return $user->can($this->permissions["delete_permissions"]);
        return true;
    }

    /**
     * Determine whether the user can restore the model.
     */
    public function restore(User $user, Permission $permission): bool
    {
        return $user->can($this->permissions["delete_permissions"]);
        return true;
    }

    /**
     * Determine whether the user can permanently delete the model.
     */
    public function forceDelete(User $user, Permission $permission): bool
    {
        return $user->can($this->permissions["delete_permissions"]);
        return true;
    }
}
