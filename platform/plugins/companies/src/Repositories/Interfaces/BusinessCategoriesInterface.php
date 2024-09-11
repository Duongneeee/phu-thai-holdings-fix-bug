<?php

namespace Botble\Companies\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface BusinessCategoriesInterface extends RepositoryInterface
{
    public function filters($filters = []);
}
