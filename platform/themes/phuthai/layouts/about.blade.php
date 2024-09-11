@php $page = Theme::get('page'); @endphp
{!! Theme::partial('header') !!}
<main>
    <section class="banner_page relative">
        <img src="{{ !empty($page->banner) ? get_image_url($page->banner) : new_theme_assets('images/banner-story.jpg') }}" alt="">
        <div class="banner_page_abs absolute flex-center">
            <div class="containers">
                <div class="title_page text-center" data-aos="fade-up" data-aos-duration="1500" data-delay="500">{{ $page->name }}</div>
                <p class="desc text-center" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                    {{ $page->description }}
                </p>
            </div>
        </div>
    </section>
    <section class="page_head" data-aos="fade-down" data-aos-duration="1500" data-delay="1000">
        <div class="containers">
            <div class="row">
                <div class="col-md-6">
                    <ul class="breads flex-center">
                        <li><a href="{{ route('public.index') }}" title="">{{ __("Home") }}</a> </li>
                        <li><span>{{ $page->name }}</span> </li>
                    </ul>
                </div>
{{--                <div class="col-md-6">--}}
{{--                    <ul class="page_nav flex-center-end">--}}
{{--                        <li class="active"><a href="" title="">{{ $page->name }}</a> </li>--}}
{{--                        <li><a href="" title="">Lịch sử phát triển</a> </li>--}}
{{--                        <li><a href="" title="">Con người</a> </li>--}}
{{--                    </ul>--}}
{{--                </div>--}}
            </div>
        </div>
    </section>
    <section class="story_desc">
        <div class="containers">
            <div class="relative">
                <div class="story_left" data-aos="fade-left" data-aos-duration="1500" data-delay="1000">
                    <div class="story_content">
                        <h2 class="font-20 font-600 mgb-20 line-15 text-dark">{!! get_field($page, 'title_sec_1_page_about') !!}</h2>
                        <div class="desc text-35 line-15 font-18">{!! get_field($page, 'desc_sec_1_page_about') !!}</div>
                    </div>
                </div>
                <div class="story_right" data-aos="fade-right" data-aos-duration="1500" data-delay="1000">
                    <img src="{{ get_image_url(get_field($page, 'image_sec_1_about')) }}" alt="">
                </div>
            </div>
        </div>
    </section>
    <section class="leaders relative">
        <div class="container">
            <div class="leaders_flex">
                <div class="leaders_img"><img src="{{ get_image_url(get_field($page, 'image_sec_2_about')) }}" alt=""></div>
                <div class="leads" data-aos="fade-up" data-aos-duration="1500" data-delay="1000">
                    <div class="leader_desc">{{ get_field($page, 'desc_about_2') }}</div>
                    <div class="font-24 font-weight-bold text_red">{{ get_field($page, 'title_sec_2_ablout') }}</div>
                </div>
            </div>
        </div>
    </section>
    <section class="stats">
        <div class="containers">
            <div class="row">
                <div class="col-md-6">
                    <div class="stats_item">
                        <div class="sta_titles"><span>{!! get_field($page, 'title_sec_3_about') !!}</span> </div>
                        <div class="line_gra mgt-10 mgb-20"></div>
                        <div class="font-20 font-weight-light text-justify">{{ get_field($page, 'title_2_sec_3_about') }}</div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="stats_item">
                        <div class="sta_titles"><span>{!! get_field($page, 'title_sec_4_about') !!}</span></div>
                        <div class="line_gra mgt-10 mgb-20"></div>
                        <div class="font-18 font-weight-light text-justify">{{ get_field($page, 'title_2_sec_4_about') }}</div>
                    </div>
                </div>
                <div class="col-md-12 mgt-30">
                    <div class="stats_item">
                        <div class="sta_titles"><span>{!! get_field($page, 'title_sec_5_about') !!}</span><span class="rr">-</span> <span class="text_red">{{ __("HỢP TÁC ĐỂ DẪN ĐẦU") }}</span></div>
                        <div class="line_gra mgt-10 mgb-20"></div>
                        <div class="stats_flex flex-center-center">
                            @foreach(get_field($page, 'content_sec_5_about') ?? [] as $item)
                                <div class="stats_item_i relative">
                                    <div class="stats_item_i_s font-20">
                                        <p class="font-weight-bold text-center">{{ get_sub_field($item, 'title') }}</p>
                                    </div>
                                    <div class="stats_item_i_d font-18 font-weight-light">{!! get_sub_field($item, 'content') !!}</div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="his">
        <div class="containers">
            <div class="sta_titles text-center mgb-60"><span>{!! get_field($page, 'title_sec_6_about') !!}</span></div>
            <div class="his_slider relative">
                <div class="his_line"></div>
                <div class="swiper">
                    <div class="swiper-wrapper">
                        @foreach(get_field($page, 'content_sec_6_about') ?? [] as $item)
                            <div class="his_item swiper-slide">
                                <div class="his_top">
                                    <div class="his_1">
                                        <div class="font-40 font-weight-bold text_red">{{ get_sub_field($item, 'title') }}</div>
                                        <div class="font-weight-bold font-24 mgt-20">{{ get_sub_field($item, 'desc') }}</div>
                                    </div>
                                    <div class="his_img"><img src="{{ get_image_url(get_sub_field($item, 'image')) }}" alt=""> </div>
                                </div>
                                <div class="his_bottom"></div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </section>
</main>
{!! Theme::partial('footer') !!}
