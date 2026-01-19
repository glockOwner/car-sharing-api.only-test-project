<?php

namespace App\Console\Commands;

use App\Models\Employee;
use Illuminate\Console\Command;

class CreateAccessTokenForUser extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:create-token {id : идентификатор пользователя}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Creates access token for employee by id';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $employee = Employee::find($this->argument('id'));
        $token = $employee->createToken($this->argument('id'));

        $this->info('Ваш токен: '.$token->plainTextToken);
    }
}
