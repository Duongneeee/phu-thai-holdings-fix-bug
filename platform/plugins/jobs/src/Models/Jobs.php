<?php

namespace Botble\Jobs\Models;

use Botble\Base\Traits\EnumCastable;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;

class Jobs extends BaseModel
{
    use EnumCastable;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'job_recruitments';

    /**
     * @var array
     */
    protected $fillable = [
        'name',
        'description',
        'job_desc',
        'job_requirements',
        'job_benefits',
        'job_contact',
        'job_deadline',
        'job_field_id',
        'job_location_id',
        'job_company_id',
        'status',
    ];

    /**
     * @var array
     */
    protected $casts = [
        'status'       => BaseStatusEnum::class,
        'job_deadline' => 'datetime',
    ];

    public function getJobDeadlineTextAttribute()
    {
        if(!empty($this->job_deadline)){
            if(now()->lt($this->job_deadline)){
                return $this->job_deadline->format('d/m/Y');
            }
        }
        return __("Đã hết hạn");
    }

    public function jobCompany()
    {
        return $this->hasOne(JobCompanies::class, 'id', 'job_company_id');
    }

    public function jobField()
    {
        return $this->hasOne(JobFields::class, 'id', 'job_field_id');
    }

    public function jobLocation()
    {
        return $this->hasOne(JobLocations::class, 'id', 'job_location_id');
    }
}
