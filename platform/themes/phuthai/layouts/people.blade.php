@php $page = Theme::get('page'); @endphp
{!! Theme::partial('header') !!}
<main>
    <section class="banner_page relative">
        <img src="{{ !empty($page->image) ? get_image_url($page->image) : theme_assets('images/banner-people.jpg') }}" alt="">
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
                            <li>
                                <a href="{{ getPageUrl('ve-chung-toi') }}" title="">{{ __("About Us") }}</a>
                            </li>
                            <li><a href="{{ getPageUrl('lich-su-phat-trien') }}" title="">{{ __("Milestones") }}</a> </li>
                            <li class="active"><a href="{{ getPageUrl('con-nguoi') }}" title="">{{ __("Our People") }}</a> </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="lead bg_f9 pd-60 relative">
        <div class="containers">
            <div class="lead_content relative">
                <div class="lead_cover" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                    <img src="{{ get_image_url(get_field($page, 'image_sec_1_page_team')) }}" alt="">
                </div>
                <div class="lead_text">
                    <h4 data-aos="fade-up" data-aos-duration="1500" data-delay="500">{{ get_field($page, 'title_sec_1_page_team') }}</h4>
                    <p data-aos="fade-up" data-aos-duration="1500" data-delay="500">{{ get_field($page, 'title_2_sec_1_page_team') }}</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-10 offset-md-1">
                    <div class="desc-p mgt-60" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                        {!! get_field($page, 'desc_sec_1_page_team') !!}
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="teams pdb-60 bg_f9" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
        <div class="containers">
            <div class="bg_w">
                <div class="row">
                    <div class="col-md-5">
                        <div class="teams_tabs">
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="li_first">
                                    <span><img src="{{ theme_assets('images/icon-peopel.png') }}" alt=""> </span>
                                    <div>
                                        our<strong>management</strong>
                                    </div>
                                </li>
                                @foreach(get_field($page, 'list_teams') ?? [] as $item)
                                    <li class="nav-item">
                                        <a class="nav-link zoom zoom-img {{ $loop->index == 0 ? 'active' : null }}" href="#tabs_{{ $loop->index }}"
                                           role="tab" data-toggle="tab">
                                            <span>
                                                <img src="{{ get_image_url(get_sub_field($item, 'image')) }}" alt="">
                                            </span>
                                        </a>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="tabs_right">
                            <div class="tab-content">
                                @foreach(get_field($page, 'list_teams') ?? [] as $item)
                                    <div role="tabpanel" class="tab-pane fade in {{ $loop->index == 0 ? 'show active' : null }}" id="tabs_{{ $loop->index }}">
                                        <div class="people_info flex">
                                            <div class="p_info">
                                                <div>
                                                    <h4>{{ get_sub_field($item, 'title') }}</h4>
                                                    <p>{{ get_sub_field($item, 'sub_title') }}<p>
                                                </div>
                                            </div>
                                            <div class="p_cover">
                                                <img src="{{ get_image_url(get_sub_field($item, 'image')) }}" alt="">
                                            </div>
                                        </div>
                                        <div class="desc mgt-30 mgb-30">
                                            {!! get_sub_field($item, 'desc') !!}
                                        </div>
                                    </div>
                                @endforeach

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
{!! Theme::partial('footer') !!}
