<?php

return [
    [
        'name' => 'Jobs',
        'flag' => 'jobs.index',
    ],
    [
        'name'        => 'Create',
        'flag'        => 'jobs.create',
        'parent_flag' => 'jobs.index',
    ],
    [
        'name'        => 'Edit',
        'flag'        => 'jobs.edit',
        'parent_flag' => 'jobs.index',
    ],
    [
        'name'        => 'Delete',
        'flag'        => 'jobs.destroy',
        'parent_flag' => 'jobs.index',
    ],
    [
        'name' => 'Job fields',
        'flag' => 'job-fields.index',
    ],
    [
        'name'        => 'Create',
        'flag'        => 'job-fields.create',
        'parent_flag' => 'job-fields.index',
    ],
    [
        'name'        => 'Edit',
        'flag'        => 'job-fields.edit',
        'parent_flag' => 'job-fields.index',
    ],
    [
        'name'        => 'Delete',
        'flag'        => 'job-fields.destroy',
        'parent_flag' => 'job-fields.index',
    ],
    [
        'name' => 'Job locations',
        'flag' => 'job-locations.index',
    ],
    [
        'name'        => 'Create',
        'flag'        => 'job-locations.create',
        'parent_flag' => 'job-locations.index',
    ],
    [
        'name'        => 'Edit',
        'flag'        => 'job-locations.edit',
        'parent_flag' => 'job-locations.index',
    ],
    [
        'name'        => 'Delete',
        'flag'        => 'job-locations.destroy',
        'parent_flag' => 'job-locations.index',
    ],
    [
        'name' => 'Job companies',
        'flag' => 'job-companies.index',
    ],
    [
        'name'        => 'Create',
        'flag'        => 'job-companies.create',
        'parent_flag' => 'job-companies.index',
    ],
    [
        'name'        => 'Edit',
        'flag'        => 'job-companies.edit',
        'parent_flag' => 'job-companies.index',
    ],
    [
        'name'        => 'Delete',
        'flag'        => 'job-companies.destroy',
        'parent_flag' => 'job-companies.index',
    ],
    [
        'name' => 'Job applies',
        'flag' => 'job-apply.index',
    ],
    [
        'name'        => 'Create',
        'flag'        => 'job-apply.create',
        'parent_flag' => 'job-apply.index',
    ],
    [
        'name'        => 'Edit',
        'flag'        => 'job-apply.edit',
        'parent_flag' => 'job-apply.index',
    ],
    [
        'name'        => 'Delete',
        'flag'        => 'job-apply.destroy',
        'parent_flag' => 'job-apply.index',
    ],
];
