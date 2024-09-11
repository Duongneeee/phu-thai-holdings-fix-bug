<?php

namespace Botble\Jobs\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface JobCompaniesInterface extends RepositoryInterface
{
    public function filters($filters = []);
}
