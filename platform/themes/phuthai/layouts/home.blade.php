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
                                        <div class="col-md-12 text-center">
                                            <h2 data-aos="fade-down" data-aos-duration="1500" data-delay="500">
                                                {{ get_sub_field($item, 'title') }}
                                            </h2>
                                            <h3 data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                                                {{ get_sub_field($item, 'title_2') }}
                                            </h3>
                                            <a href="{{ get_sub_field($item, 'link') }}" title="" class="btn_red_2 mgt-60" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                                                {{ __('view_more') }}
                                            </a>
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
    </section>
    <section class="index_numbers">
        <div class="containers">
            <div class="index_number">
                @foreach(get_field($page, 'sumary_home') ?? [] as $item)
                    <div class="number_item" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                        <img src="{{ get_image_url(get_sub_field($item, 'icon')) }}" alt="">
                        <div><span class="timers" data-speed="3000" data-from="0" data-to="{{ get_sub_field($item, 'title') }}">{{ get_sub_field($item, 'title') }}</span>+</div>
                        <p>{!! get_sub_field($item, 'desc') !!}</p>
                    </div>
                @endforeach
            </div>
        </div>
    </section>
    <section class="about_indexs">
        <div class="containers">
            <div class="relative">
                <div class="abo_content">
                    <div class="title_index mgb-60 text-uppercase">
                        {{ get_field($page, 'title_about_page_home') }}
                    </div>
                    <div class="font-24 font-weight-bold text-35 mgb-60" data-aos="fade-right" data-aos-duration="1500" data-delay="500">
                        {!! get_field($page, 'content_about_page_home') !!}
                    </div>
                    <div class="abo_red" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                        {!! get_field($page, 'content_about_2_page_home') !!}
                        <p class="mgt-20">
                            <a href="{{ locale() == 'vi' ? url('ve-chung-toi') : url('en/about-us-1') }}" title="" class="xt xt_r">{{ __("view_more") }}</a>
                        </p>
                    </div>
                </div>
                <div class="abo_video" data-aos="fade-left" data-aos-duration="1500" data-delay="500">
                    <iframe width="100%" height="100%" src="{{ get_field($page, 'video_about_home') }}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </section>
    <section class="fields">
        <div class="containers">
            <div class="title_index title_gradient mgb-60 text-uppercase" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                <span>{{ __("business_category") }}</span>
            </div>
            <div class="fields_slider n_slider relative">
                <div class="swiper">
                    <div class="swiper-wrapper">
                        @foreach(getBusinessCategories(['status' => true]) ?? [] as $item)
                            <div class="fields_item swiper-slide" data-aos="fade-right" data-aos-duration="1500" data-delay="500">
                                <div class="fields_img zoom-img">
                                    <span><img src="{{ get_image_url($item->image) }}" alt=""></span>
                                </div>
                                <div class="fields_name">{{ $item->name }}</div>
                                <div class="fields_list">
                                    @php
                                        $companies = getCompanies(['category_id' => $item->id]);
                                    @endphp
                                    <ul>
                                        @foreach($companies ?? [] as $company)
                                            <li><a href="{{ $company->link }}" title="">{{ $company->name }}</a> </li>
                                        @endforeach
                                    </ul>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <div class="swiper-button swiper-button-prev swiper-button-prev-222"></div>
                <div class="swiper-button swiper-button-next swiper-button-next-222"></div>
            </div>
        </div>
    </section>
    @php
        $posts = get_latest_posts(12);
    @endphp
    <section class="news_index pdt-60">
        <div class="containers">
            <div class="title_index title_gradient mgb-60 text-uppercase" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                <span>{{ __('Tin tức') }}</span>
            </div>
            <div  data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                <div class="row">
                    @php
                        $postFirst = $posts->first();
                    @endphp
                    <div class="col-md-6">
                        <div class="n_item">
                            <a href="{{ $postFirst->url }}" title="" class="zoom-img zoom">
                                <span>
                                    <img src="{{ get_image_url($postFirst->image) }}" alt="">
                                </span>
                            </a>
                            @if(!empty($postFirst->first_category))
                                <p class="mg-15">
                                    <a href="{{ $postFirst->first_category->url }}" title="" class="font-18 font-600 text_red text-uppercase">
                                        {{ $postFirst->first_category->name }}
                                    </a>
                                </p>
                            @endif
                            <h4>
                                <a href="{{ $postFirst->url }}" title="" class="font-weight-bold text-uppercase line-15">
                                    {{ $postFirst->name }}
                                </a>
                            </h4>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="n_list">
                            @foreach($posts->skip(1)->take(3) ?? [] as $item)
                                <div class="n_item">
                                    <div class="n_left">
                                        @if(!empty($item->first_category))
                                            <p class="mg-10">
                                                <a href="{{ $item->first_category->url }}" title="" class="font-12 font-600 text_red text-uppercase">
                                                    {{ $item->first_category->name }}
                                                </a>
                                            </p>
                                        @endif
                                        <h4>
                                            <a href="{{ $item->url }}" title="{{ $item->name }}" class="font-14 font-weight-bold text-uppercase line-15">
                                                {{ $item->name }}
                                            </a>
                                        </h4>
                                    </div>
                                    <div class="n_right">
                                        <a href="{{ $item->url }}" title="{{ $item->name }}" class="zoom-img zoom">
                                            <span><img src="{{ get_image_url($item->image) }}" alt=""> </span>
                                        </a>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
                <div class="flex-center-center mg-30"><a href="{{ locale() == 'vi' ? url('tin-tuc') : url('en/news') }}" title="" class="xt">{{ __("view_more") }}</a></div>
            </div>
        </div>
    </section>
    @php
        $partnerPages = get_page_by_id(19);
    @endphp
    <section class="partnerss pdt-60">
        <div class="containers">
            <div class="title_index title_gradient mgb-60 text-uppercase" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                <span>CÁC ĐỐI TÁC CHIẾN LƯỢC</span>
            </div>
            <div class="partners_slider relative mgb-60"data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                <div class="swiper">
                    <div class="swiper-wrapper">
                        @foreach(get_field($partnerPages, 'partners') ?? [] as $partner)
                            <div class="swiper-slide">
                                <a href="{{ get_sub_field($partner, 'link') }}" title="{{ get_sub_field($partner, 'title') }}">
                                    <img src="{{ get_image_url(get_sub_field($partner, 'logo')) }}" alt="{{ get_sub_field($partner, 'title') }}">
                                </a>
                            </div>
                        @endforeach
                    </div>
                </div>
                <div class="swiper-pagination mgt-30"></div>
            </div>
        </div>
    </section>
</main>
{!! Theme::partial('footer') !!}
