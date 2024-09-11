<?php

namespace Botble\Jobs\Repositories\Eloquent;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Jobs\Repositories\Interfaces\JobFieldsInterface;

class JobFieldsRepository extends RepositoriesAbstract implements JobFieldsInterface
{
    public function filters($filters = [])
    {
        $data = $this->model;

        if (!empty($filters['status'])) {
            $data = $data->where('status', BaseStatusEnum::PUBLISHED);
        }
        $data->orderBy('idx', 'asc');

        return $this->applyBeforeExecuteQuery($data)->get();
    }
}
