<?php

namespace App\Console\Commands;

use App\Models\Permission;
use App\Models\Role;
use App\Models\User;
use Illuminate\Console\Command;

class CreateBase extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:create-base';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Execute the console command.
     */

    private $startRole = 'admin';


    public function handle()
    {
        $policies = [
            (new \App\Policies\PermissionPolicy())->permissions,
            (new \App\Policies\RolePolicy())->permissions,
            (new \App\Policies\UserPolicy())->permissions,
        ];


        $startRole = Role::where("name", $this->startRole)->first();

        if (!$startRole)
            $startRole = Role::create(["name" => $this->startRole]);


        foreach ($policies as $key => $permissions) {
            foreach ($permissions as $key => $permission) {
                $permission = Permission::updateOrCreate([
                    "name" => $permission
                ]);

                $startRole->givePermissionTo($permission);
            }
        }

        if ($startRole->users->count() == 0) {
            $admin = User::create([
                "name" => "Admin",
                "email" => "admin@sys.com",
                "password" =>  "abc123bys"
            ]);

            $admin->assignRole($startRole);
        }
    }
}
