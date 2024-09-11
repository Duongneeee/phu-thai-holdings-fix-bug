<main>
    <section class="banner_page relative">
        <img src="{{ theme_assets('images/banner-news.jpg') }}" alt="">
        <div class="banner_page_abs absolute flex-center">
            <div class="containers">
                <div class="title_page text-center" data-aos="fade-up" data-aos-duration="1500" data-delay="500">{{ __("Tin tức") }}</div>
                <p class="desc text-center" data-aos="fade-up" data-aos-duration="1500" data-delay="500">{{ $post->name }}</p>
            </div>
        </div>
    </section>
    <section class="page_head" data-aos="fade-down" data-aos-duration="1500" data-delay="1000">
        <div class="containers">
            <div class="row">
                <div class="col-md-12">
                    <ul class="breads flex-center">
                        <li><a href="{{ route('public.index') }}" title="">{{ __("Home") }}</a> </li>
                        <li><a href="{{ getPageUrl('tin-tuc') }}" title="">{{ __("Tin tức") }}</a> </li>
                        <li><span>{{ $post->name }}</span> </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section class="news_detail pd-60">
        <div class="containers">
            <div class="row">
                <div class="row">
                    <div class="col-md-9">
                        <div class="news_cover zoom-img"><span><img src="{{ get_image_url($post->image) }}" alt=""></span> </div>
                        <article>
                            <h1 class="font-weight-bold text-dark text-uppercase font-30 mgb-20 mgt-30">{{ $post->name }}</h1>
                            <div class="mgb-60 font-weight-light font-18">{{ $post->created_at->format('d/m/Y') }}</div>
                            {!! $post->content !!}
                        </article>
                    </div>
                    @php
                        $posts = get_featured_posts(4);
                    @endphp
                    <div class="col-md-3">
                        <div class="news_sidebar sticky-top">
                            @foreach($posts as $item)
                                @continue($item->id == $post->id)
                                <div class="nn_item">
                                    <a href="{{ $item->url }}" title="{{ $item->name }}" class="zoom-img zoom"><span><img src="{{ get_image_url($item->image) }}" alt=""> </span></a>
                                    <div class="mg-10"><a href="{{ $item->url }}" title="{{ $item->name }}" class="font-12 font-600 text_red text-uppercase">{{ $item->first_category->name }}</a> </div>
                                    <h4><a href="{{ $item->url }}" title="{{ $item->name }}" class="font-14 text-uppercase text-dark font-weight-bold line-15">{{ $item->name }}</a> </h4>
                                </div>
                            @endforeach
                            <div class="slogan relative">
                                <img src="{{ get_image_url(theme_option('image_slogan_1')) }}" alt="">
                                <div class="absolute flex-center-center font-14 font-weight-bold text-white text-uppercase text-justify">
                                    {{ theme_option('slogan_1') }}
                                </div>
                            </div>
                            <div class="slogan_2">
                                {{ theme_option('slogan_2') }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    @php
        $posts = get_related_posts($post->id, 4);
    @endphp
    @if(count($posts))
    <section class="related pd-60">
        <div class="containers">
            <div class="n_slider n_slider_1 relative" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                <div class="swiper">
                    <div class="swiper-wrapper">
                        @foreach($posts as $item)
                            <div class="ns_item swiper-slide">
                                <a href="{{ $item->url }}" title="{{ $item->name }}" class="zoom-img zoom">
                                    <span><img src="{{ get_image_url($item->image) }}" alt="{{ $item->name }}"> </span>
                                </a>
                                <p class="mg-15"><a href="" title="" class="font-14 font-600 text_red text-uppercase"></a> </p>
                                <h4><a href="{{ $item->url }}" title="{{ $item->name }}" class="font-weight-bold text-uppercase line-15">{{ $item->name }}</a> </h4>
                                <div class="desc font-14 font-weight-light">{{ $item->description }}</div>
                                <div class="flex-center">
                                    <span class="font-weight-light">{{ $item->created_at->format('d/m/Y') }}</span>
                                    <div class="gr_line">
                                        <a href="{{ $item->url }}" title="" class="xt">Xem thêm</a>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <div class="swiper-button swiper-button-prev swiper-button-prev-33"></div>
                <div class="swiper-button swiper-button-next swiper-button-next-33"></div>
            </div>
        </div>
    </section>
    @endif
</main>
