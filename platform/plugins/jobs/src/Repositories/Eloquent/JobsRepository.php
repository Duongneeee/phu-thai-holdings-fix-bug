<?php

namespace Botble\Jobs\Repositories\Eloquent;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Jobs\Repositories\Interfaces\JobsInterface;

class JobsRepository extends RepositoriesAbstract implements JobsInterface
{
    public function filters($filters = [])
    {
        $limit = $filters['limit'] ?? 10;
        $paginate = $filters['paginate'] ?? true;

        $data = $this->model->with([
            'jobCompany',
            'jobField',
            'jobLocation',
        ])->where('status', BaseStatusEnum::PUBLISHED);

        if(!empty($filters['not_in_id'])) {
            $data = $data->whereNotIn('id', $filters['not_in_id']);
        }

        if(!empty($filters['job_field_id'])) {
            $data = $data->where('job_field_id', $filters['job_field_id']);
        }

        if(!empty($filters['job_company_id'])) {
            $data = $data->where('job_company_id', $filters['job_company_id']);
        }

        if(!empty($filters['job_location_id'])) {
            $data = $data->where('job_location_id', $filters['job_location_id']);
        }


        $data = $data->latest();

        if(!empty($paginate)) {
            return $this->applyBeforeExecuteQuery($data)->paginate($limit);
        }

        return $this->applyBeforeExecuteQuery($data)->take($limit)->get();
    }

    public function jobCount($filters = [])
    {
        $data = $this->model;

        if(!empty($filters['status'])) {
            $data = $data->where('status', BaseStatusEnum::PUBLISHED);
        }

        if(!empty($filters['job_company_id'])) {
            $data = $data->where('job_company_id', $filters['job_company_id']);
        }

        return $this->applyBeforeExecuteQuery($data)->count();

    }
}
