<?php

namespace Botble\Companies\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface CompaniesInterface extends RepositoryInterface
{
    public function filters($filters = []);
}
