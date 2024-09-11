@php $page = Theme::get('page'); @endphp
{!! Theme::partial('header') !!}
<main>
    <section class="banner_page relative">
        <img src="{{ !empty($page->image) ? get_image_url($page->image) : theme_assets('images/banner-mile.jpg') }}" alt="">
        <div class="banner_page_abs absolute flex-center">
            <div class="containers">
                <div class="title_page text-center">{{ $page->name }}</div>
                <p class="desc text-center">{{ $page->description }}</p>
            </div>
        </div>
        <div class="page_head">
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
                                <li>
                                    <a href="{{ getPageUrl('ve-chung-toi') }}" title="">{{ __("About Us") }}</a>
                                </li>
                                <li class="active"><a href="{{ getPageUrl('lich-su-phat-trien') }}" title="">{{ __("Milestones") }}</a> </li>
                                <li><a href="{{ getPageUrl('con-nguoi') }}" title="">{{ __("Our People") }}</a> </li>
                            </ul>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="milestones relative">
        <div class="containers">
            <div class="mile_list">
                @foreach(get_field($page, 'milestones') ?? [] as $item)
                    <div class="mile_item">
                        <div class="mile_cover" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                            <img src="{{ get_image_url(get_sub_field($item, 'image')) }}" alt="">
                        </div>
                        <div class="mile_text relative">
                            <div class="year" data-aos="fade-up" data-aos-duration="1500" data-delay="500">{{ get_sub_field($item, 'year') }}</div>
                            <div class="desc" data-aos="fade-up" data-aos-duration="1500" data-delay="500">{{ get_sub_field($item, 'desc') }}</div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>
</main>
{!! Theme::partial('footer') !!}
