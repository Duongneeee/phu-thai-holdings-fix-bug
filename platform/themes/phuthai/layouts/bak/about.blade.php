@php $page = Theme::get('page'); @endphp
{!! Theme::partial('header') !!}
<main>
    <section class="banner_page relative">
        <img src="{{ !empty($page->banner) ? get_image_url($page->banner) : theme_assets('images/banner-story.jpg') }}" alt="">
        <div class="banner_page_abs absolute flex-center">
            <div class="containers">
                <div class="title_page text-center" data-aos="fade-up" data-aos-duration="1500" data-delay="500">{{ $page->name }}</div>
                <p class="desc text-center" data-aos="fade-up" data-aos-duration="1500" data-delay="500">{{ $page->description }}</p>
            </div>
        </div>
        <div class="page_head" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
            <div class="containers">
                <div class="row">
                    <div class="col-md-6">
                        <ul class="breads flex-center">
                            <li><a href="{{ route('public.index') }}" title="">{{ __("Home") }}</a> </li>
                            <li><span>{{ $page->name }}</span> </li>
                        </ul>
                    </div>
                    <div class="col-md-6">
                        <ul class="page_nav flex-center-end">
                            <ul class="page_nav flex-center-end">
                                <li class="active">
                                    <a href="javascript:;" title="">{{ __("About Us") }}</a>
                                </li>
                                <li><a href="{{ getPageUrl('lich-su-phat-trien') }}" title="">{{ __("Milestones") }}</a> </li>
                                <li><a href="{{ getPageUrl('con-nguoi') }}" title="">{{ __("Our People") }}</a> </li>
                            </ul>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="story_desc text-center pd-60">
        <div class="containers">
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <div class="text_red font-600 font-30 font-600 mgb-30" data-aos="fade-up" data-aos-duration="1500" data-delay="500">{!! get_field($page, 'title_sec_1_page_about') !!}</div>
                    <div class="font-20" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                        {!! get_field($page, 'desc_sec_1_page_about') !!}
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="leader pdt-60">
        @foreach(get_field($page, 'sec_2_page_about') ?? [] as $item)
            <div class="leader_item">
                <div class="w_50" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                    <div class="leader_content">
                        <h3>{!! get_sub_field($item, 'title') !!}</h3>
                        <div class="font-20">{!! get_sub_field($item, 'desc') !!}</div>
                    </div>
                </div>
                <div class="w_50" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                    <div class="zoom zoom-img">
                        <span><img src="{{ get_image_url(get_sub_field($item, 'image')) }}" alt=""> </span>
                    </div>
                </div>
            </div>
        @endforeach
    </section>
    <section class="statement pd-60">
        <div class="containers">
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <div class="title_index mgb-30 text-center text-uppercase" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                        {{ get_field($page, 'title_sec_3_page_about') }}
                    </div>
                    <div class="statement_content text-center">
                        <h2 data-aos="fade-up" data-aos-duration="1500" data-delay="500">{{ get_field($page, 'title_1_sec_3_page_about') }}</h2>
                        <div class="desc" data-aos="fade-up" data-aos-duration="1500" data-delay="500">{!! get_field($page, 'dec_1_sec_3_page_about') !!}</div>
                        <p class="mgb-30" data-aos="fade-up" data-aos-duration="1500" data-delay="500"><img src="{{ theme_assets('images/icon-down.png') }}" alt=""> </p>
                        <h2 data-aos="fade-up" data-aos-duration="1500" data-delay="500">{{ get_field($page, 'title_2_sec_3_page_about') }}</h2>
                        <div class="desc" data-aos="fade-up" data-aos-duration="1500" data-delay="500">{!! get_field($page, 'desc_2_sec_3_page_about') !!}</div>
                        <p class="mgb-30" data-aos="fade-up" data-aos-duration="1500" data-delay="500"><img src="{{ theme_assets('images/icon-down.png') }}" alt=""> </p>
                        <h2 data-aos="fade-up" data-aos-duration="1500" data-delay="500">{{ get_field($page, 'title_3_sec_3_page_about') }}</h2>
                        <div data-aos="fade-up" data-aos-duration="1500" data-delay="500"><img src="{{ get_image_url(get_field($page, 'image_1_sec_3_page_about')) }}" alt=""> </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
{!! Theme::partial('footer') !!}

