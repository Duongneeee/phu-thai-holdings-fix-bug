<?php

use Botble\Theme\Theme;

return [

    /*
    |--------------------------------------------------------------------------
    | Inherit from another theme
    |--------------------------------------------------------------------------
    |
    | Set up inherit from another if the file is not exists,
    | this is work with "layouts", "partials" and "views"
    |
    | [Notice] assets cannot inherit.
    |
    */

    'inherit' => null, //default

    /*
    |--------------------------------------------------------------------------
    | Listener from events
    |--------------------------------------------------------------------------
    |
    | You can hook a theme when event fired on activities
    | this is cool feature to set up a title, meta, default styles and scripts.
    |
    | [Notice] these events can be overridden by package config.
    |
    */

    'events' => [

        // Before event inherit from package config and the theme that call before,
        // you can use this event to set meta, breadcrumb template or anything
        // you want inheriting.
        'before' => function($theme)
        {
            // You can remove this line anytime.
        },

        // Listen on event before render a theme,
        // this event should call to assign some assets,
        // breadcrumb template.
        'beforeRenderTheme' => function (Theme $theme)
        {
            $theme->asset()->add('swiper-bundle_css', 'https://cdnjs.cloudflare.com/ajax/libs/Swiper/8.3.1/swiper-bundle.css');
            $theme->asset()->add('aos_css', 'https://unpkg.com/aos@2.3.1/dist/aos.css');

            $theme->asset()->add('aos_css', 'https://unpkg.com/aos@2.3.1/dist/aos.css');
            $theme->asset()->add('bootstrap', new_theme_assets('css/bootstrap.min.css'));
            $theme->asset()->add('fancybox', new_theme_assets('css/jquery.fancybox.min.css'));
            $theme->asset()->add('mmenu', new_theme_assets('css/jquery.mmenu.all.css'));
            $theme->asset()->add('styles', new_theme_assets('css/styles.css'));
            $theme->asset()->add('responsive', new_theme_assets('css/responsive.css'));
            $theme->asset()->add('custom_styles', new_theme_assets('customs/styles.css'));

            $theme->asset()->container('footer')->add('jquery', new_theme_assets('js/jquery.min.js'));
            $theme->asset()->container('footer')->add('aos_js', 'https://unpkg.com/aos@2.3.1/dist/aos.js');
            $theme->asset()->container('footer')->add('swiper-bundle_js', 'https://cdnjs.cloudflare.com/ajax/libs/Swiper/8.3.1/swiper-bundle.min.js');

            $theme->asset()->container('footer')->add('bootstrap_js', new_theme_assets('js/bootstrap.min.js'));
            $theme->asset()->container('footer')->add('count-to_js', new_theme_assets('js/jquery.countTo.js'));
            $theme->asset()->container('footer')->add('fancybox_js', new_theme_assets('js/jquery.fancybox.min.js'));
            $theme->asset()->container('footer')->add('mmenu_js', new_theme_assets('js/jquery.mmenu.all.js'));
            $theme->asset()->container('footer')->add('private_js', new_theme_assets('js/private.js'));
            $theme->asset()->container('footer')->usePath()->add('posts_js', 'js/posts.js');
            $theme->asset()->container('footer')->add('script_js', new_theme_assets('customs/scripts.js'));
        },

        // Listen on event before render a layout,
        // this should call to assign style, script for a layout.
        'beforeRenderLayout' => [

            'default' => function ($theme)
            {
                // $theme->asset()->usePath()->add('ipad', 'css/layouts/ipad.css');
            }
        ]
    ]
];
