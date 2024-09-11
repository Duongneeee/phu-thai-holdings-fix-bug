<?php

namespace Botble\Companies\Repositories\Eloquent;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Companies\Repositories\Interfaces\BusinessCategoriesInterface;

class BusinessCategoriesRepository extends RepositoriesAbstract implements BusinessCategoriesInterface
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
