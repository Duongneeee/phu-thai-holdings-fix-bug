<?php

namespace Botble\Jobs\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface JobsInterface extends RepositoryInterface
{
    public function filters($filters = []);

    public function jobCount($filters = []);
}
