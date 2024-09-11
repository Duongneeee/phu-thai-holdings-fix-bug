@php $page = Theme::get('page'); @endphp
{!! Theme::partial('header') !!}
<main>
    <section class="banner_page relative">
        <img src="{{ !empty($page->banner) ? get_image_url($page->banner) : theme_assets('images/banner-busi.jpg') }}"
             alt="">
        <div class="banner_page_abs absolute flex-center">
            <div class="containers">
                <div class="title_page text-center" data-aos="fade-up" data-aos-duration="1500"
                     data-delay="500">{{ $page->name }}</div>
                <p class="desc text-center" data-aos="fade-up" data-aos-duration="1500"
                   data-delay="500">{{ $page->description }}</p>
            </div>
        </div>
        <div class="page_head" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
            <div class="containers">
                <div class="row">
                    <div class="col-md-6">
                        <ul class="breads flex-center">
                            <li><a href="{{ route('public.index') }}" title="">{{ __("Home") }}</a></li>
                            <li><span>{{ $page->name }}</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="busi bg_f9 pd-60">
        <div class="containers">
            <div class="text-center busi_title" data-aos="fade-up" data-aos-duration="1500"
                 data-delay="500">{{ get_field($page, 'title_sec_1') }}</div>
            <div class="row">
                <div class="col-md-6">
                    <div class="desc font-18 text-right" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                        {!! get_field($page, 'desc_sec_1') !!}
                    </div>
                </div>
                <div class="col-md-5 offset-md-1">
                    <div class="row">
                        @foreach(get_field($page, 'sumarys') ?? [] as $item)
                            <div class="col-md-6 col-6 {{ $loop->index < 2 ? 'mgb-30' : null }}" data-aos="fade-up"
                                 data-aos-duration="1500" data-delay="500">
                                <div class="busi_item">
                                    <div>{{ get_sub_field($item, 'title') }}</div>
                                    <p>{{ get_sub_field($item, 'desc') }}</p>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>
    @foreach(get_field($page, 'list_compaies') ?? [] as $item)
        <section class="busis_item" id="business_{{ $loop->index + 1 }}">
            <div class="bu_1" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                <span><img src="{{ get_image_url(get_sub_field($item, 'logo')) }}" alt=""> </span>
                <div>
                    <div class="font-30 font-600 text-uppercase">{!! get_sub_field($item, 'name') !!}</div>
                    <p>{!! get_sub_field($item, 'desc') !!}</p>
                </div>
            </div>
            <div class="bu_2" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                <img src="{{ get_image_url(get_sub_field($item, 'banner')) }}" alt="">
            </div>
        </section>
    @endforeach
</main>
{!! Theme::partial('footer') !!}
