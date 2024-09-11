@php $page = Theme::get('page'); @endphp
{!! Theme::partial('header') !!}
<main>
    <section class="banner_page relative">
        <img src="{{ !empty($page->banner) ? get_image_url($page->banner) : theme_assets('images/banner-contact.jpg') }}" alt="">
        <div class="banner_page_abs absolute flex-center">
            <div class="containers">
                <div class="title_page text-center">{{ $page->name }}</div>
                <p class="desc text-center">{{ $page->description }}</p>
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
            </div>
        </div>
    </section>
    <section class="contact pd-60">
        <div class="containers">
            <div class="row">
                @foreach(get_field($page, 'contact_list') ?? [] as $item)
                    <div class="col-md-4">
                        <div class="contact_item">
                            <span><img src="{{ get_image_url(get_sub_field($item, 'image')) }}" alt=""> </span>
                            <div class="contact_text">
                                <h4>{!! get_sub_field($item, 'title') !!}</h4>
                                <div class="desc">{!! get_sub_field($item, 'desc') !!}</div>
                                <a href="mailto:{!! get_sub_field($item, 'info') !!}" title="">{!! get_sub_field($item, 'info') !!}</a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
            <div class="contact_bottom">
                <div class="contact_slider">
                    <div class="swiper">
                        <div class="swiper-wrapper">
                            @foreach(get_field($page, 'banner_contact_page') ?? [] as $item)
                                <div class="swiper-slide zoom-img">
                                    <span>
                                        <img src="{{ get_image_url(get_sub_field($item, 'image')) }}" alt="">
                                    </span>
                                </div>
                            @endforeach
                        </div>
                    </div>
                    <div class="swiper-pagination mgt-30"></div>
                </div>
            </div>
        </div>
    </section>
    <section class="contact_banner"><img src="{{ get_image_url(get_field($page, 'banner_2_page_contact')) }}" alt=""> </section>
</main>
{!! Theme::partial('footer') !!}
