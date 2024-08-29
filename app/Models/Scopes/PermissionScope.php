<?php

namespace App\Models\Scopes;

use App\Models\Company;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Scope;
use Illuminate\Support\Facades\Auth;

class PermissionScope implements Scope
{

    private $user;
    public function __construct($user)
    {
        $this->user = $user;
    }

    public function apply(Builder $builder, Model $model)
    {
        $user = $this->user;
        if ($user) {
            if ($user->company_id) {
                $builder->whereHas("companies", function ($query) use ($user) {
                    $query
                        ->where("model_id", $user->company_id)
                        ->where("model_type", Company::class);
                });
            }
        }
    }
}
