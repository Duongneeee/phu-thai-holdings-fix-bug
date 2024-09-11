<?php

namespace Botble\Companies;

use Illuminate\Support\Facades\Schema;
use Botble\PluginManagement\Abstracts\PluginOperationAbstract;

class Plugin extends PluginOperationAbstract
{
    public static function remove()
    {
        Schema::dropIfExists('companies');
        Schema::dropIfExists('companies_translations');
    }
}
