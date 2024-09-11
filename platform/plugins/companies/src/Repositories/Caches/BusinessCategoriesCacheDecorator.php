<?php

namespace Botble\Companies\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Companies\Repositories\Interfaces\BusinessCategoriesInterface;

class BusinessCategoriesCacheDecorator extends CacheAbstractDecorator implements BusinessCategoriesInterface
{

    public function filters($filters = [])
    {
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }
}
