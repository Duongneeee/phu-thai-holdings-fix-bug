<?php

return [
    [
        'name' => 'Companies',
        'flag' => 'companies.index',
    ],
    [
        'name'        => 'Create',
        'flag'        => 'companies.create',
        'parent_flag' => 'companies.index',
    ],
    [
        'name'        => 'Edit',
        'flag'        => 'companies.edit',
        'parent_flag' => 'companies.index',
    ],
    [
        'name'        => 'Delete',
        'flag'        => 'companies.destroy',
        'parent_flag' => 'companies.index',
    ],
    [
        'name' => 'Business categories',
        'flag' => 'business-categories.index',
    ],
    [
        'name'        => 'Create',
        'flag'        => 'business-categories.create',
        'parent_flag' => 'business-categories.index',
    ],
    [
        'name'        => 'Edit',
        'flag'        => 'business-categories.edit',
        'parent_flag' => 'business-categories.index',
    ],
    [
        'name'        => 'Delete',
        'flag'        => 'business-categories.destroy',
        'parent_flag' => 'business-categories.index',
    ],
];
