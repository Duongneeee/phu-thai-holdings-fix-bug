<?php

namespace Botble\Jobs\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Jobs\Repositories\Interfaces\JobFieldsInterface;

class JobFieldsCacheDecorator extends CacheAbstractDecorator implements JobFieldsInterface
{

    public function filters($filters = [])
    {
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }
}
