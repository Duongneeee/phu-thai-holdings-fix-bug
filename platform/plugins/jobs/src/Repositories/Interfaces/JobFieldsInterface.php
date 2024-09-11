<?php

namespace Botble\Jobs\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface JobFieldsInterface extends RepositoryInterface
{
    public function filters($filters = []);
}
