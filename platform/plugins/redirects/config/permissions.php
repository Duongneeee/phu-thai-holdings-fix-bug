<?php

return [
    [
        'name' => 'Redirects',
        'flag' => 'redirects.index',
    ],
    [
        'name'        => 'Create',
        'flag'        => 'redirects.create',
        'parent_flag' => 'redirects.index',
    ],
    [
        'name'        => 'Edit',
        'flag'        => 'redirects.edit',
        'parent_flag' => 'redirects.index',
    ],
    [
        'name'        => 'Delete',
        'flag'        => 'redirects.destroy',
        'parent_flag' => 'redirects.index',
    ],
];
