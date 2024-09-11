@php $page = Theme::get('page'); @endphp
{!! Theme::partial('header') !!}
<main>
    <section class="banner_page banner_page_black relative">
        <img src="{{ !empty($page->banner) ? get_image_url($page->banner) : theme_assets('images/banner-busi.jpg') }}" alt="">
        <div class="banner_page_abs absolute flex-center">
            <div class="containers">
                <div class="title_page text-center" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                    {{ $page->name }}
                </div>
                <p class="desc text-center" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                    {{ $page->description }}
                </p>
            </div>
        </div>
    </section>
    <section class="page_head page_head_black" data-aos="fade-down" data-aos-duration="1500" data-delay="1000">
        <div class="containerss">
            <div class="row">
                <div class="col-md-6">
                    <ul class="breads flex-center">
                        <li><a href="{{ route('public.index') }}" title="">{{ __("Home") }}</a></li>
                        <li><span>{{ $page->name }}</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <section class="lv_1 pd-90">
        <div class="containers">
            <div class="title_index text-uppercase"><span class="span_gra">{{ get_field($page, 'title_sec_1') }}</span></div>
            <div class="lv1_flex">
                <div class="desc font-20 font-weight-light line-15" data-aos="fade-right" data-aos-duration="1500" data-delay="1000">
                    {!! get_field($page, 'desc_sec_1') !!}
                </div>
                <div class="lv_index">
                    <div class="index_number">
                        @foreach(get_field($page, 'sumarys') ?? [] as $item)
                            <div class="number_item" data-aos="fade-up" data-aos-duration="1500" data-delay="1000">
                                <img src="{{ get_image_url(get_sub_field($item, 'icon')) }}" alt="">
                                <div><span class="timers" data-speed="3000" data-from="0" data-to="{{ get_sub_field($item, 'title') }}">{{ get_sub_field($item, 'title') }}</span>+</div>
                                <p>{!! get_sub_field($item, 'desc') !!}</p>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="lv_2 mgb-30 relative">
        <img src="{{ new_theme_assets('images/new/bg-field.png') }}" alt="">
        <div class="lv2_abs absolute pd-90">
            <div class="containers">
                <div class="lv2_flex">
                    <div class="lv2_left">
                        @php
                            $businessCategories =  getBusinessCategories(['status' => true]);
                        @endphp
                        <ul class="nav nav-tabs" role="tablist">
                            @foreach($businessCategories ?? [] as $item)
                                <li class="nav-item">
                                    <a class="nav-link @if($loop->index == 0) in active show @endif" href="#field-{{ $item->id }}" role="tab" data-toggle="tab">
                                        <span>{{ $item->name }}</span>
                                    </a>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                    <div class="lv2_right">
                        <!-- Tab panes -->
                        <div class="tab-content lv2_tabs2">
                            @foreach($businessCategories ?? [] as $item)
                                <div role="tabpanel" class="tab-pane fade @if($loop->index == 0) in active show @endif" id="field-{{ $item->id }}">
                                    @php
                                        $companies = getCompanies(['category_id' => $item->id]);
                                    @endphp
                                    <ul class="nav nav-tabs" role="tablist">
                                        @foreach($companies ?? [] as $company)
                                            <li class="nav-item">
                                                <a class="nav-link {{ $loop->index == 0 ? 'active' : null }}" href="#company-{{ $company->id }}" role="tab" data-toggle="tab">
                                                    <span>{{ $company->name }}</span>
                                                </a>
                                            </li>
                                        @endforeach
                                    </ul>
                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        @foreach($companies ?? [] as $company)
                                            <div role="tabpanel" class="tab-pane fade @if($loop->index == 0) in active show @endif" id="company-{{ $company->id }}">
                                                <div class="com_flex">
                                                    <div class="com_logo">
                                                        <a href="{!! $company->link !!}" title="" target="_blank">
                                                            <img src="{{ get_image_url($company->image) }}" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="com_content">
                                                        <div class="desc line-15">
                                                            {!! $company->description !!}
                                                        </div>
                                                        <a href="{!! $company->link !!}" title="" class="btn_red_2 btn_red_sm mgt-60" target="_blank">Website</a>
                                                    </div>
                                                </div>
                                            </div>
                                        @endforeach
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
{!! Theme::partial('footer') !!}
