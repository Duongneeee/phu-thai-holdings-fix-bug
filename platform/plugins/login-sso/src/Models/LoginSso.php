<?php

namespace Botble\LoginSso\Models;

use Botble\Base\Models\BaseModel;

class LoginSso extends BaseModel
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'login_otp';

    /**
     * @var array
     */
    protected $fillable = [
        'type',
        'otp',
        'user_id',
        'status',
    ];
}
