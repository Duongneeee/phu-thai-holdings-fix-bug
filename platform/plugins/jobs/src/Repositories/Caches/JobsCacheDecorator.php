<?php

namespace Botble\Jobs\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Jobs\Repositories\Interfaces\JobsInterface;

class JobsCacheDecorator extends CacheAbstractDecorator implements JobsInterface
{

    public function filters($filters = [])
    {
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }

    public function jobCount($filters = [])
    {
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }
}
