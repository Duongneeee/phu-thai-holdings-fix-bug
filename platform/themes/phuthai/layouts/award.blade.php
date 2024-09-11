@php $page = Theme::get('page'); @endphp
{!! Theme::partial('header') !!}
<main>
    <section class="banner_page banner_page_award relative">
        <img src="{{ !empty($page->banner) ? get_image_url($page->banner) : theme_assets('images/banner-award.jpg') }}" alt="">
        <div class="banner_page_abs absolute flex-center">
            <div class="containers">
                <div class="title_page text-center" data-aos="fade-down" data-aos-duration="1500" data-delay="1000">{{ $page->name }}</div>
                <p class="desc font-18 text-center" data-aos="fade-up" data-aos-duration="1500" data-delay="1000">
                    {{ $page->description }}
                </p>
            </div>
        </div>
    </section>
    <section class="page_head">
        <div class="containers">
            <div class="row">
                <div class="col-md-6">
                    <ul class="breads flex-center">
                        <li><a href="{{ route('public.index') }}" title="">{{ __("Home") }}</a> </li>
                        <li><span>{{ $page->name }}</span> </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <section class="awards">
        <div class="containers">
            <div class="awards_box pd-90">
                <div class="aw_title font-weight-bold text-uppercase" data-aos="fade-up" data-aos-duration="1500" data-delay="1000">
                    <span>{!! get_field($page, 'title_sec_1_award') !!}</span>
                </div>
                <div class="row">
                    <div class="col-md-8">
                        <div class="pdr-60">
                            <div class="row">
                                <div class="col-md-6" data-aos="fade-up" data-aos-duration="1500" data-delay="1000">
                                    <div class="aw_content">
                                        <div class="aw_index">{{ get_field($page, 'rank_award_1') }}</div>
                                        <div class="aw_h font-weight-bold text_red text-uppercase font-30">{{ get_field($page, 'title_award_1') }}</div>
                                        <p class="aw_lv mgb-60">{{ get_field($page, 'desc_award_1') }}</p>
                                        <div class="aw_desc">
                                            {{ get_field($page, 'desc_log_award_1') }}
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6" data-aos="fade-up" data-aos-duration="1500" data-delay="1000">
                                    <div class="aw_item relative">
                                        <div class="zoom-img"><span><img src="{{new_theme_assets("images/awrad-2.png")}}" alt=""> </span></div>
                                        <div class="aw_abs text-center absolute">
                                            <div>
                                                <h2 class="font-30 font-weight-bold text-uppercase aw_h">{{ get_field($page, 'title_award_1') }}</h2>
                                                <p class="aw_lv">{{ get_field($page, 'desc_award_1') }}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    @php
                        $lstAwrad = get_field($page, 'list_awrad_1');
                        $lstAwrad = array_chunk($lstAwrad ?? [], 2)
                    @endphp

                    <div class="col-md-4">
                        <div class="n_slider aw_slider relative" data-aos="fade-up" data-aos-duration="1500" data-delay="1000">
                            <div class="swiper">
                                <div class="swiper-wrapper">
                                    @foreach($lstAwrad ?? [] as $arrayChuck)
                                        @php
                                            $indexLoop = $loop->iteration;
                                        @endphp
                                        <div class="aw_items swiper-slide">
                                            @foreach($arrayChuck as $item)
                                                <div class="aw_item relative" data-index="{{ $indexLoop++ }}" data-img="{{ get_image_url(get_sub_field($item, 'image')) }}" data-name="{{ get_sub_field($item, 'title') }}" data-desc="{{ get_sub_field($item, 'desc') }}"
                                                     data-longdesc="{{ get_sub_field($item, 'desc_2') }}">
                                                    <div class="zoom-img">
                                                        <span>
                                                            <img src="{{ get_image_url(get_sub_field($item, 'image')) }}" alt="">
                                                        </span>
                                                    </div>
                                                    <div class="aw_abs text-center absolute">
                                                        <div>
                                                            <h2 class="font-30 font-weight-bold text-uppercase">
                                                                {{ get_sub_field($item, 'title') }}
                                                            </h2>
                                                            <p>
                                                                {!! get_sub_field($item, 'desc') !!}
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            @endforeach
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                            <div class="swiper-button swiper-button-prev swiper-button-prev-33"></div>
                            <div class="swiper-button swiper-button-next swiper-button-next-33"></div>
                        </div>
                    </div>
                </div>
                </div>
            <div class="line_gra mg-30"></div>
            <div class="awards_box awards_box_2 pd-90">
                <div class="aw_title font-weight-bold text-uppercase" data-aos="fade-up" data-aos-duration="1500" data-delay="1000">
                    <span>{!! get_field($page, 'title_sec_2_award') !!}</span>
                </div>
                <div class="row">
                    <div class="col-md-8">
                        <div class="pdr-60">
                            <div class="row">
                                <div class="col-md-6" data-aos="fade-up" data-aos-duration="1500" data-delay="1000">
                                    <div class="aw_content">
                                        <div class="aw_index">
                                            {!! get_field($page, 'rank_award_2') !!}
                                        </div>
                                        <div class="aw_h font-weight-bold text_red text-uppercase font-30">
                                            {!! get_field($page, 'title_award_2') !!}
                                        </div>
                                        <p class="aw_lv mgb-60">
                                            {!! get_field($page, 'desc_award_2') !!}
                                        </p>
                                        <div class="aw_desc">
                                            {!! get_field($page, 'desc_log_award_2') !!}
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6" data-aos="fade-up" data-aos-duration="1500" data-delay="1000">
                                    <div class="aw_item relative">
                                        <div class="zoom-img"><span><img src="{{new_theme_assets("images/awrad-2.png")}}" alt=""> </span></div>
                                        <div class="aw_abs text-center absolute">
                                            <div>
                                                <h2 class="aw_h font-30 font-weight-bold text-uppercase">{!! get_field($page, 'title_award_2') !!}</h2>
                                                <p class="aw_lv">{!! get_field($page, 'desc_award_2') !!}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    @php
                        $lstAwrad2 = get_field($page, 'list_awrad_2');
                        $lstAwrad2 = array_chunk($lstAwrad2 ?? [], 2)
                    @endphp
                    <div class="col-md-4">
                        <div class="n_slider aw_slider_2 relative" data-aos="fade-up" data-aos-duration="1500" data-delay="1000">
                            <div class="swiper">

                                <div class="swiper-wrapper">
                                    @foreach($lstAwrad2 ?? [] as $arrayChuck)
                                        @php
                                            $indexLoop = $loop->iteration;
                                        @endphp
                                        <div class="aw_items swiper-slide">
                                            @foreach($arrayChuck as $item)
                                                <div class="aw_item relative" data-index="{{ $indexLoop++ }}" data-img="{{ get_image_url(get_sub_field($item, 'image')) }}" data-name="{{ get_sub_field($item, 'title') }}" data-desc="{{ get_sub_field($item, 'desc') }}"
                                                     data-longdesc="{{ get_sub_field($item, 'desc_2') }}">
                                                    <div class="zoom-img"><span><img src="{{ get_image_url(get_sub_field($item, 'image')) }}" alt=""> </span></div>
                                                    <div class="aw_abs text-center absolute">
                                                        <div>
                                                            <h2 class="font-30 font-weight-bold text-uppercase">
                                                                {{ get_sub_field($item, 'title') }}
                                                            </h2>
                                                            <p>
                                                                {!! get_sub_field($item, 'desc') !!}
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            @endforeach
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                            <div class="swiper-button swiper-button-prev swiper-button-prev-44"></div>
                            <div class="swiper-button swiper-button-next swiper-button-next-44"></div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
</main>
{!! Theme::partial('footer') !!}
