<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=5, user-scalable=1" name="viewport"/>
        {!! Theme::header() !!}
    </head>
    <body>
    <header>
        <div class="containers">
            <div class="flex-center-between">
                <div class="header_left flex-center-between">
                    <a href="{{ route('public.index') }}" title="" class="logo">
                        <img src="{{ get_image_url(theme_option('logo')) }}" alt="">
                    </a>
                    {!!
                        Menu::renderMenuLocation('main-menu', [
                            'options' => [
                                'class' => 'header_nav',
                             ],
                            'theme' => true,
                            'view' => 'custom-menu',
                        ])
                    !!}
                </div>
                <div class="header_right flex-center-end">
                    <a href="{{ route('public.search') }}" title="" class="search_link"><i class="fas fa-search"></i> </a>
                    <div class="select_fake language relative">
                        <select id="switch-lang">
                            <option value="{{ Language::getLocalizedURL('en') }}" {{ locale() == 'en' ? 'selected' : null }}>EN</option>
                            <option value="{{ Language::getLocalizedURL('vi') }}" {{ locale() == 'vi' ? 'selected' : null }}>VI</option>
                        </select>
                        <i class="fas fa-caret-down"></i>
                    </div>
                </div>
            </div>
        </div>
        <a href="" id="hamburger" class="Sticky hamburger-btn">
             <span class="mburger mburger--collapse">
                <b></b>
                <b></b>
                <b></b>
             </span>
        </a>
    </header>
    <section class="header_abs">
        <div class="frm_search">
            <form class="flex-center" action="{{ route('public.search') }}">
                <input type="text" placeholder="Search" name="q" value="{{ request('q') }}">
                <button type="submit"><i class="fas fa-search"></i></button>
            </form>
        </div>
        <div class="header_menu markup-menu">
            {!!
                Menu::renderMenuLocation('main-menu', [
                    'options' => [],
                    'theme' => true,
                    'view' => 'custom-menu-2',
                ])
            !!}
        </div>
    </section>
