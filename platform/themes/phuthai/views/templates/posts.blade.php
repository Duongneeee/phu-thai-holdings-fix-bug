@php
    $pageId = theme_option('blog_page_id', setting('blog_page_id'));
    $page = \Botble\Page\Models\Page::query()->find($pageId);
@endphp
<main>
    <section class="banner_page banner_page_red  relative">
        <img src="{{ !empty($page) && !empty($page->banner) ? get_image_url($page->banner) : new_theme_assets('images/bg-news.png') }}" alt="">
        <div class="banner_page_abs absolute flex-center">
            <div class="containers">
                <div class="title_page text-center" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                    {{ __("Tin tức") }}
                </div>
                <p class="desc text-center" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                    {{ !empty($category) ? $category->name : (!empty($page) ? $page->description : null) }}
                </p>
            </div>
            <div class="page_head page_head_red" data-aos="fade-down" data-aos-duration="1500" data-delay="1000">
                <div class="containers">
                    <div class="row">
                        <div class="col-md-6">
                            <ul class="breads flex-center">
                                <li><a href="{{ route('public.index') }}" title="">{{ __("Home") }}</a> </li>
                                @if(!empty($category))
                                    <li><a href="{{ getPageUrl('tin-tuc') }}" title="">{{ __("Tin tức") }}</a> </li>
                                    <li><span>{{ $category->name }}</span> </li>
                                @else
                                    <li><span>{{ __("Tin tức") }}</span> </li>
                                @endif
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="news_block pdt-60">
        <div class="containers">
            <div class="news_nav n_slider relative">
                <div class="swiper">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide {{ !empty($category) ? '' : 'active' }}"><a href="{{ locale() == 'vi' ? url('/tin-tuc') : url('news') }}" title="">{{ __("all") }}</a> </div>
                        @foreach(get_featured_categories(10) ?? [] as $item)
                        <div class="swiper-slide {{ !empty($category) && $category->id == $item->id ? 'active' : '' }}">
                            <a href="{{ $item->url }}" title="">{{ $item->name }}</a>
                        </div>
                        @endforeach
                    </div>
                </div>
                <div class="swiper-button swiper-button-prev swiper-button-prev-222"></div>
                <div class="swiper-button swiper-button-next swiper-button-next-222"></div>
            </div>
        </div>
    </section>
    <section class="news_index pd-60">
        <div class="containers">
            @if(count($posts))
                @php
                    $postFirst = $posts->first();
                @endphp
                <div class="row">
                    <div class="col-md-6" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
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
                                <div class="n_item" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
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
                <div class="ns_items relative mgt-90" data-aos="fade-up" data-aos-duration="1500" data-delay="1000">
                    <div class="row" id="append_posts">
                        @foreach($posts->skip(4) ?? [] as $item)
                            <div class="col-md-4">
                                <div class="ns_item ">
                                    <a href="{{ $item->url }}" title="{{ $item->name }}" class="zoom-img zoom">
                                        <span>
                                            <img src="{{ get_image_url($item->image) }}" alt="{{ $item->name }}">
                                        </span>
                                    </a>
                                    <p class="mg-15">
                                        <a href="{{ $item->first_category->url }}" title="" class="font-14 font-600 text_red text-uppercase">
                                            {{ $item->first_category->name }}
                                        </a>
                                    </p>
                                    <h4>
                                        <a href="{{ $item->url }}" title="{{ $item->name }}" class="font-weight-bold text-uppercase line-15">
                                            {{ $item->name }}
                                        </a>
                                    </h4>
                                    <div class="desc font-14 font-weight-light">
                                        {{ $item->description }}
                                    </div>
                                    <div class="flex-center">
                                        <span class="font-weight-light">
                                            {{ $item->created_at->format('d/m/Y') }}
                                        </span>
                                        <div class="gr_line">
                                            <a href="{{ $item->url }}" title="" class="xt">{{ __("view_more") }}</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>

                @if($posts->hasMorePages())
                    <div class="more text-center">
                        <a href="javascript:;" style="border-radius: 8px" data-page="2" data-action="{{ route('ajax.posts') }}" data-category="{{ !empty($category) ? $category->id : null }}" class="inflex-center-center load-more-posts">
                            <span>{{ __("view_more") }}</span>
                            <img  src="{{ theme_assets('images/icon-more.png') }}" alt="">
                        </a>
                    </div>
                @endif
            @else
                <div class="row">
                    <div class="col-sm-12">
                        <div class="alert alert-primary" role="alert">
                            {{ __("data_are_being_updated") }}
                        </div>
                    </div>
                </div>
            @endif
        </div>
    </section>
</main>
