<?php

app()->booted(function () {
    theme_option()
        ->setSection([
            'title' => "Thông tin",
            'desc' => "Thông tin",
            'id' => 'opt-sec-info',
            'subsection' => true,
            'icon' => 'fa fa-home',
        ])->setField([
            'id'         => 'name_company',
            'section_id' => 'opt-sec-info',
            'type'       => 'text',
            'label'      => "Tên công ty",
            'attributes' => [
                'name' => 'name_company',
                'value' => null,
                'options' => [
                    'class' => 'form-control',
                ]
            ],
        ])->setField([
            'id'         => 'address',
            'section_id' => 'opt-sec-info',
            'type'       => 'text',
            'label'      => "Địa chỉ",
            'attributes' => [
                'name' => 'address',
                'value' => null,
                'options' => [
                    'class' => 'form-control',
                ]
            ],
        ])->setField([
            'id'         => 'phone',
            'section_id' => 'opt-sec-info',
            'type'       => 'text',
            'label'      => "Số điện thoại",
            'attributes' => [
                'name' => 'phone',
                'value' => null,
                'options' => [
                    'class' => 'form-control',
                ]
            ],
        ])->setField([
            'id'         => 'email',
            'section_id' => 'opt-sec-info',
            'type'       => 'text',
            'label'      => "Email",
            'attributes' => [
                'name' => 'email',
                'value' => null,
                'options' => [
                    'class' => 'form-control',
                ]
            ],
        ])->setField([
            'id'         => 'title_footer_1',
            'section_id' => 'opt-sec-info',
            'type'       => 'text',
            'label'      => "Title Footer 1",
            'attributes' => [
                'name' => 'title_footer_1',
                'value' => null,
                'options' => [
                    'class' => 'form-control',
                ]
            ],
        ])->setField([
            'id'         => 'title_footer_2',
            'section_id' => 'opt-sec-info',
            'type'       => 'text',
            'label'      => "Title Footer 2",
            'attributes' => [
                'name' => 'title_footer_2',
                'value' => null,
                'options' => [
                    'class' => 'form-control',
                ]
            ],
        ])->setField([
            'id'         => 'facebook_link',
            'section_id' => 'opt-sec-info',
            'type'       => 'text',
            'label'      => "Facebook Link",
            'attributes' => [
                'name' => 'facebook_link',
                'value' => null,
                'options' => [
                    'class' => 'form-control',
                ]
            ],
        ])->setField([
            'id'         => 'youtube_link',
            'section_id' => 'opt-sec-info',
            'type'       => 'text',
            'label'      => "Youtube Link",
            'attributes' => [
                'name' => 'youtube_link',
                'value' => null,
                'options' => [
                    'class' => 'form-control',
                ]
            ],
        ])->setField([
            'id'         => 'mail_link',
            'section_id' => 'opt-sec-info',
            'type'       => 'text',
            'label'      => "Mail Link",
            'attributes' => [
                'name' => 'mail_link',
                'value' => null,
                'options' => [
                    'class' => 'form-control',
                ]
            ],
        ]);

    theme_option()->setSection([
        'title' => "Chi tiêt tin tức",
        'desc' => "Chi tiêt tin tức",
        'id' => 'opt-sec-detail-post',
        'subsection' => true,
        'icon' => 'fa fa-tags',
    ])->setField([
        'id'         => 'slogan_1',
        'section_id' => 'opt-sec-detail-post',
        'type'       => 'text',
        'label'      => "Slogan 1",
        'attributes' => [
            'name' => 'slogan_1',
            'value' => null,
            'options' => [
                'class' => 'form-control',
            ]
        ],
    ])->setField([
        'id'         => 'image_slogan_1',
        'section_id' => 'opt-sec-detail-post',
        'type'       => 'mediaImage',
        'label'      => "Hình ảnh slogan 1",
        'attributes' => [
            'name' => 'image_slogan_1',
            'value' => null,
        ],
    ])->setField([
        'id'         => 'slogan_2',
        'section_id' => 'opt-sec-detail-post',
        'type'       => 'text',
        'label'      => "Slogan 2",
        'attributes' => [
            'name' => 'slogan_2',
            'value' => null,
            'options' => [
                'class' => 'form-control',
            ]
        ],
    ]);
});
