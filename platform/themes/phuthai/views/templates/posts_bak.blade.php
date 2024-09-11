@php
      $pageId = theme_option('blog_page_id', setting('blog_page_id'));
      $page = \Botble\Page\Models\Page::query()->find($pageId);
@endphp
<main>
    <section class="banner_page relative">
        <img src="{{ !empty($page) && !empty($page->banner) ? get_image_url($page->banner) : theme_assets('images/banner-news.jpg') }}" alt="">
        <div class="banner_page_abs absolute flex-center">
            <div class="containers">
                <div class="title_page text-center">{{ __("Tin tức") }}</div>
                <p class="desc text-center">{{ !empty($category) ? $category->name : (!empty($page) ? $page->description : null) }}</p>
            </div>
        </div>
        <div class="page_head">
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
    </section>
    <section class="news pd-60">
        <div class="containers">
            <div class="row" id="append_posts">
                @foreach($posts as $post)
                    <div class="col-md-4">
                        <div class="news_item">
                            <a href="{{ $post->url }}" title="" class="zoom-img zoom">
                                <span>
                                    <img src="{{ get_image_url($post->image) }}" alt="">
                                </span>
                            </a>
                            <div class="news_cache">
                                <h4><a href="{{ $post->url }}" title="" class="font-600">{{ $post->name }}</a> </h4>
                                <div class="desc">
                                    {!! $post->description !!}
                                </div>
                                <div class="dates">{{ $post->created_at->format('d/m/Y') }}</div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
            @if($posts->hasMorePages())
                <div class="more text-center">
                    <a href="javascript:;" data-page="2" data-action="{{ route('ajax.posts') }}" data-category="{{ !empty($category) ? $category->id : null }}"
                       class="inflex-center-center load-more-posts">
                        <span>View more...</span>
                        <img  src="{{ theme_assets('images/icon-more.png') }}" alt="">
                    </a>
                </div>
            @endif
        </div>
    </section>
</main>
