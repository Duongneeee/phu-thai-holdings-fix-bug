<?php

namespace Botble\Companies\Repositories\Eloquent;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Companies\Repositories\Interfaces\CompaniesInterface;

class CompaniesRepository extends RepositoriesAbstract implements CompaniesInterface
{
    public function filters($filters = [])
    {
        $data = $this->model->where('status', BaseStatusEnum::PUBLISHED);

        if (!empty($filters['category_id'])) {
            $data = $data->where('business_category_id', $filters['category_id']);
        }

        $data->orderBy('idx', 'asc');

        return $this->applyBeforeExecuteQuery($data)->get();
    }
}
