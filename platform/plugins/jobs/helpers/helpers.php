<?php

if (!function_exists('getJobFields')) {
    function getJobFields($filters = [])
    {
        return app(\Botble\Jobs\Repositories\Interfaces\JobFieldsInterface::class)->filters($filters);
    }
}

if(!function_exists('getJobLocations')) {
    function getJobLocations($filters = [])
    {
        return app(\Botble\Jobs\Repositories\Interfaces\JobLocationsInterface::class)->filters($filters);
    }
}

if(!function_exists('getJobCompanies')) {
    function getJobCompanies($filters = [])
    {
        return app(\Botble\Jobs\Repositories\Interfaces\JobCompaniesInterface::class)->filters($filters);
    }
}
