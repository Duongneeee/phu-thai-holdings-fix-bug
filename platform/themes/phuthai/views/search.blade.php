<main>
    <main>
        <section class="banner_page banner_page_search relative">
            <img src="{{ theme_assets('images/banner-search.jpg') }}" alt="">
            <div class="banner_page_abs absolute flex-center">
                <div class="containers">
                    <div class="title_page text-center mgb-60">Search</div>
                    <div class="frm_search">
                        <form class="flex-center">
                            <input type="text" placeholder="Sample" name="q" value="{{ request('q') }}">
                            <button type="submit"><i class="fas fa-search"></i></button>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <section class="search_page pd-60">
            <div class="container">
                @if(!empty(request('q')))
                    <div class="search_title text-center"><span>{{ count($posts) }}</span> {{ __("results found for the keyword") }} <span>“{{ request('q') }}”</span></div>
                @endif
                <ul class="search_list">
                    @foreach($posts as $post)
                        <li><a href="{{ $post->url }}" title="">{{ $post->name }}<i class="fal fa-angle-right"></i></a></li>
                    @endforeach
                </ul>
                {{--<div class="more mgt-60 text-center">
                    <a href="" title="" class="inflex-center-center"><span>View more...</span> <img src="images/icon-more.png" alt=""> </a>
                </div>--}}
            </div>
        </section>
    </main>
</main>
