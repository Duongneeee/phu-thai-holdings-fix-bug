<?php

namespace Botble\Jobs;

use Illuminate\Support\Facades\Schema;
use Botble\PluginManagement\Abstracts\PluginOperationAbstract;

class Plugin extends PluginOperationAbstract
{
    public static function remove()
    {
        Schema::dropIfExists('jobs');
        Schema::dropIfExists('jobs_translations');
    }
}
