<?php

namespace Botble\Jobs\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Jobs\Repositories\Interfaces\JobLocationsInterface;

class JobLocationsCacheDecorator extends CacheAbstractDecorator implements JobLocationsInterface
{

    public function filters($filters = [])
    {
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }
}
