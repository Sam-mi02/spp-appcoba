<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Carbon\Carbon;

class AdminSeeder extends Seeder
{
    public function run()
    {
        DB::table('users')->insert([
            'name' => 'Samuel',
            'nama_lengkap' => 'Samuel',
            'hp' => '089999999', // Set to null if no phone number is needed
            'email' => 'samuel@gmail.com',
            'email_verified_at' => Carbon::now(),
            'password' => Hash::make('12345678'),
            'remember_token' => null,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now(),
        ]);
    }
}
