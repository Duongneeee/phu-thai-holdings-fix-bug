<?php

register_page_template([
    'default'     => 'Default',
    'award'       => 'Giải thưởng',
    'milestones'  => 'Milestones',
    'sustainable' => 'Sustainable Development',
    'business'    => 'Business',
    'people'      => 'People',
    'about'       => 'About',
    'contact'     => 'Contact',
    'home'        => 'Home',
    'partners'    => 'Đối tác',
]);

register_sidebar([
    'id'          => 'second_sidebar',
    'name'        => 'Second sidebar',
    'description' => 'This is a sample sidebar for phuthai theme',
]);

Menu::addMenuLocation('menu-footer-1', 'Menu footer 1');
Menu::addMenuLocation('menu-footer-2', 'Menu footer 2');

RvMedia::setUploadPathAndURLToPublic();

if (!function_exists('theme_assets')) {
    function theme_assets($url)
    {
        return Theme::asset()->url($url);
    }
}

if (!function_exists('new_theme_assets')) {
    function new_theme_assets($url)
    {
        if ($url[0] == '/') {
            $url = substr($url, 1);
        }
        return asset('assets/' . $url);
    }
}



if (!function_exists('locale')) {
    function locale()
    {
        return app()->getLocale();
    }
}

if (!function_exists('getPages')) {
    function getPageUrl($slug)
    {
        if (locale() == 'en') {
            return url('en/' . $slug);
        }
        return url($slug);
    }
}

Event::listen(\Illuminate\Routing\Events\RouteMatched::class, function () {
    if (isProduction()) {
        hideMenuAdmin();
    }
});


if (!function_exists('hideMenuAdmin')) {
    function hideMenuAdmin()
    {
        dashboard_menu()
            ->removeItem('cms-core-appearance-custom-js', 'cms-core-theme')
            ->removeItem('cms-core-appearance-custom-css', 'cms-core-theme')
            ->removeItem('cms-core-plugins')
            ->removeItem('cms-plugins-custom-field');
    }
}

if (!function_exists('isProduction')) {
    function isProduction()
    {
        return config('app.env') == 'production';
    }
}

if (!function_exists('get_item_repeater_filed')) {
    function get_item_repeater_filed($items, $filed)
    {
        foreach ($items as $item) {
            if ($item['key'] == $filed) {
                return $item['value'] ?? null;
            }
        }
        return null;
    }
}




