<?php

namespace Botble\Jobs\Models;

use Botble\Base\Traits\EnumCastable;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;
use Botble\Contact\Enums\ContactStatusEnum;

class JobApply extends BaseModel
{
    use EnumCastable;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'job_apply_jobs';

    /**
     * @var array
     */
    protected $fillable = [
        'job_id',
        'name',
        'email',
        'phone',
        'address',
        'cv_file',
        'url',
        'status',
    ];

    /**
     * @var array
     */
    protected $casts = [
        'status' => ContactStatusEnum::class,
    ];

    public function job()
    {
        return $this->hasOne(Jobs::class, 'id', 'job_id');
    }


}
