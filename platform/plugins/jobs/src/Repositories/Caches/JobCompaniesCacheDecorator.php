<?php

namespace Botble\Jobs\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Jobs\Repositories\Interfaces\JobCompaniesInterface;

class JobCompaniesCacheDecorator extends CacheAbstractDecorator implements JobCompaniesInterface
{

    public function filters($filters = [])
    {
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }
}
