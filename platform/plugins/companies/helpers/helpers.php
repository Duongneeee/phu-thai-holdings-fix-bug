<?php

if(!function_exists('getBusinessCategories')) {
    function getBusinessCategories($filters = []) {
        return app(\Botble\Companies\Repositories\Interfaces\BusinessCategoriesInterface::class)->filters($filters);
    }
}

if(!function_exists('getCompanies')) {
    function getCompanies($filters = []) {
        return app(\Botble\Companies\Repositories\Interfaces\CompaniesInterface::class)->filters($filters);
    }
}
