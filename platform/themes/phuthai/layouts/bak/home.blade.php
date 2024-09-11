@php $page = Theme::get('page'); @endphp
{!! Theme::partial('header') !!}
<main class="main_bg">
    <section class="banner relative">
        <div class="banner_slider relative">
            <div class="swiper">
                <div class="swiper-wrapper">
                    @foreach(get_field($page, 'banner_home') ?? [] as $item)
                        <div class="banner_item swiper-slide">
                            <img src="{{ get_image_url(get_sub_field($item, 'image')) }}" alt="">
                            <div class="banner_abs flex-center absolute">
                                <div class="containers">
                                    <div class="row">
                                        <div class="col-md-5">
                                            <h2>{!! get_sub_field($item, 'title') !!}</h2>
                                            <a href="{!! get_sub_field($item, 'link') !!}" title=""
                                               class="btn_w mgt-60">{{ __('Learn more') }}...</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
            <div class="swiper-button swiper-button-prev prev-1"></div>
            <div class="swiper-button swiper-button-next next-1"></div>
        </div>
        <div class="index_number">
            @foreach(get_field($page, 'sumary_home') ?? [] as $item)
                <div class="number_item" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                    <div><span class="timers" data-speed="3000" data-from="0" data-to="{{ get_sub_field($item, 'title') }}">{{ get_sub_field($item, 'title') }}</span></div>
                    <p>{{ get_sub_field($item, 'desc') }}</p>
                </div>
            @endforeach
        </div>
        <a href="javascript:;" title="" class="btn_scroll inflex-center-center">
            <span>Scroll</span>
            <i class="fas fa-chevron-down"></i>
        </a>
    </section>
    <style>
        .ab_content p{
            display: inline;
        }
    </style>
    <section class="about_index">
        <div class="containers">
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <div class="ab_content">
                        <div class="title_index mgb-30 text-center text-uppercase" data-aos="fade-up"
                             data-aos-duration="1500"
                             data-delay="500">{!! get_field($page, 'title_about_page_home') !!}</div>
                        <div class="ab_text" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                            <span><img src="{{ theme_assets('images/icon-right-2.png') }}" alt=""> </span>
                            {!! get_field($page, 'content_about_page_home') !!}
                            <span><img src="{{ theme_assets('images/icon-left-2.png') }}" alt=""> </span>
                        </div>
                        <div class="text-center mgt-30" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                            <a href="{!! get_field($page, 'link_about_page_home') !!}" title=""
                               class="btn_red inflex-center-center">{{ __("Learn more") }}...</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="business">
        <div class="containers">
            <div class="title_index mgb-30 text-center text-uppercase" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                {!! get_field($page, 'title_business_page_home') !!}
            </div>
            <div class="bus_wrapper relative" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                @foreach(get_field($page, 'business_page_home') ?? [] as $item)
                    <div class="bus_item">
                        <a href="{{ get_sub_field($item, 'link') }}" title="" class="bus_content">
                            <div class="bus_logo">
                                <img src="{{ get_image_url(get_sub_field($item, 'logo')) }}" alt="">
                            </div>
                            <div class="bus_name">
                                <span>{{ get_sub_field($item, 'title') }}</span>
                            </div>
                        </a>
                        <div class="bus_img" style="background: url('{{ get_image_url(get_sub_field($item, 'banner')) }}') no-repeat center"></div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>
    <section class="map pd-60">
        <div class="containers">
            <div class="map_cache">
                <div class="map_box relative">
                <!--                <img src="https://phuthai.apecsoft.asia/themes/phuthai/images/new/map.png" alt="">-->
                    <div class="pin_item pin_item_1"  data-id="2">
                        <div class="pin_cache relative">
                            <span class="pin_nor"><img src="{{ theme_assets('images/new/pin-sm.png') }}" alt=""> </span>
                            <div class="pin_hover relative">
                                <div class="pin_name">Pon Holdings BV</div>
                                <div class="pin_logo"><img src="{{ theme_assets('images/new/logo-1.png') }}" alt=""> </div>
                            </div>
                        </div>
                    </div>
                    <div class="pin_item pin_item_2" data-id="1">
                        <div class="pin_cache relative">
                            <span class="pin_nor"><img src="{{ theme_assets('images/new/pin-sm.png') }}" alt=""> </span>
                            <div class="pin_hover relative">
                                <div class="pin_name">caterpillar</div>
                                <div class="pin_logo"><img src="{{ theme_assets('images/new/caterpillar.png') }}" alt=""> </div>
                            </div>
                        </div>
                    </div>
                    <div class="pin_item pin_item_3" data-id="5">
                        <div class="pin_cache relative">
                            <span class="pin_nor"><img src="{{ theme_assets('images/new/pin-sm.png') }}" alt=""> </span>
                            <div class="pin_hover relative">
                                <div class="pin_name">Itochu</div>
                                <div class="pin_logo"><img src="{{ theme_assets('images/new/Itochu.png') }}" alt=""> </div>
                            </div>
                        </div>
                    </div>
                    <div class="pin_item pin_item_4" data-id="3">
                        <div class="pin_cache relative">
                            <span class="pin_nor"><img src="{{ theme_assets('images/new/pin-sm.png') }}" alt=""> </span>
                            <div class="pin_hover relative">
                                <div class="pin_name">bjc</div>
                                <div class="pin_logo"><img src="{{ theme_assets('images/new/bjc.png') }}" alt=""> </div>
                            </div>
                        </div>

                    </div>
                    <div class="pin_item pin_item_5" data-id="6">
                        <div class="pin_cache relative">
                            <span class="pin_nor"><img src="{{ theme_assets('images/new/pin-sm.png') }}" alt=""> </span>
                            <div class="pin_hover relative">
                                <div class="pin_name">medion</div>
                                <div class="pin_logo"><img src="{{ theme_assets('images/new/medion.png') }}" alt=""> </div>
                            </div>
                        </div>
                    </div>
                    <div class="pin_item pin_item_6" data-id="4">
                        <div class="pin_cache relative">
                            <span class="pin_nor"><img src="{{ theme_assets('images/new/pin-sm.png') }}" alt=""> </span>
                            <div class="pin_hover relative">
                                <div class="pin_name">elphinestone</div>
                                <div class="pin_logo"><img src="{{ theme_assets('images/new/elphinestone.png') }}" alt=""> </div>
                            </div>
                        </div>
                    </div>
                    <div class="pin_item pin_item_main">
                        <div class="relative">
                            <div class="pin_cache relative">
                                <span class="pin_nor"><img src="{{ theme_assets('images/new/pin-pt.png') }}" alt=""> </span>
                            </div>
                            <div class="line line-1" id="line-1"><img src="{{ theme_assets('images/new/3.png') }}" alt=""> </div>
                            <div class="line line-2" id="line-2"><img src="{{ theme_assets('images/new/1.png') }}" alt=""> </div>
                            <div class="line line-3" id="line-3"><img src="{{ theme_assets('images/new/2.png') }}" alt=""> </div>
                            <div class="line line-4" id="line-4"><img src="{{ theme_assets('images/new/4.png') }}" alt=""> </div>
                            <div class="line line-5" id="line-5"><img src="{{ theme_assets('images/new/5.png') }}" alt=""> </div>
                            <div class="line line-6" id="line-6"><img src="{{ theme_assets('images/new/6.png') }}" alt=""> </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
{!! Theme::partial('footer') !!}
