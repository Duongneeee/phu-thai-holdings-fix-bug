@php $page = Theme::get('page'); @endphp
{!! Theme::partial('header') !!}
<main>
    <section class="banner_page banner_page_black relative">
        <img src="{{ !empty($page->image) ? get_image_url($page->image) : theme_assets('images/banner-sus.jpg') }}" alt="">
        <div class="banner_page_abs absolute flex-center">
            <div class="containers">
                <div class="title_page text-center" data-aos="fade-up" data-aos-duration="1500" data-delay="500">{{ $page->name }}</div>
                <p class="desc text-center" data-aos="fade-up" data-aos-duration="1500" data-delay="500">{{ $page->description }}</p>
            </div>
        </div>
    </section>
    <section class="page_head page_head_black" data-aos="fade-down" data-aos-duration="1500" data-delay="1000">
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
    <section class="sus pd-60">
        <div class="containers">
            @foreach(get_field($page, 'sustainables') ?? [] as $item)
            <div class="sub_item">
                <div class="sub_icon"><span><img src="{{ get_image_url(get_sub_field($item, 'icon')) }}" alt=""></span></div>
                <div class="sub_content">
                    <div class="font-24 font-weight-bold text-dark">{!! get_sub_field($item, 'title') !!}</div>
                    <div class="font-20 font-weight-light text-justify mgt-30">{!! get_sub_field($item, 'desc') !!}</div>
                </div>
                <div class="sub_img"><img src="{{ get_image_url(get_sub_field($item, 'image')) }}" alt=""> </div>
            </div>
            @endforeach
        </div>
    </section>
</main>
{!! Theme::partial('footer') !!}
