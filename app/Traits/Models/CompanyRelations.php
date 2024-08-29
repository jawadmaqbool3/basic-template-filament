<?php

namespace App\Traits\Models;

use App\Models\Company;
use Illuminate\Database\Eloquent\Relations\HasOne;

trait CompanyRelations
{
    public function company(): HasOne
    {
        return $this->hasOne(Company::class, "id", "company_id");
    }
}   
