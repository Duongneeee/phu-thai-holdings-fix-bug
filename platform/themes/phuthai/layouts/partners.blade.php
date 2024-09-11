@php $page = Theme::get('page'); @endphp
{!! Theme::partial('header') !!}
<main>
    <section class="banner_page banner_page_black relative">
        <img src="{{ !empty($page->banner) ? get_image_url($page->banner) : new_theme_assets('images/bg-dtac.png') }}" alt="">
        <div class="banner_page_abs absolute flex-center">
            <div class="containers">
                <div class="title_page text-center" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                    {{ $page->name }}
                </div>
                <p class="desc font-18 text-center" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                    {{ $page->description }}
                </p>
            </div>
        </div>
    </section>
    <section class="page_head" data-aos="fade-down" data-aos-duration="1500" data-delay="1000">
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
    </section>
    <section class="partners pd-90">
        <div class="containers">
            <div class="partners_slider mgb-60">
                <div class="swiper">
                    <div class="swiper-wrapper">
                        @foreach(get_field($page, 'partners') ?? [] as $partner)
                            <div class="swiper-slide">
                                <a href="{{ get_sub_field($partner, 'link') }}" title="{{ get_sub_field($partner, 'title') }}">
                                    <img src="{{ get_image_url(get_sub_field($partner, 'logo')) }}" alt="{{ get_sub_field($partner, 'title') }}">
                                </a>
                            </div>
                        @endforeach
                    </div>
                </div>
                <div class="swiper-pagination mgt-20"></div>
            </div>
            <div class="parts">
                @foreach(get_field($page, 'parners_2') ?? [] as $partner)
                    <a href="{{ get_sub_field($partner, 'link') }}" title="{{ get_sub_field($partner, 'title') }}" class="parts_item">
                        <img src="{{ get_image_url(get_sub_field($partner, 'logo')) }}" alt="{{ get_sub_field($partner, 'title') }}">
                    </a>
                @endforeach
            </div>
            <div class="mgt-60" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                <div class="part_flex">
                    <div class="part_content">
                        <div class="title_index mgb-30 text-uppercase" ><span>{!! get_field($page, 'title_sec_2_partners') !!}</span></div>
                        <div class="mgb-30">{!! get_field($page, 'desc_sec_2_partners') !!}</div>
                    </div>
                    <div class="partners_form">
                        <div class="jobs_form">
                            <div class="font-30 font-600 text-white">
                                {{ __("contact_us") }}
                            </div>
                            <p class="text-white mg-15">
                                {{ __("partner_info") }}
                            </p>

                            @if (session()->has('success_msg'))
                                <div class="alert alert-success" style="margin-top: 10px" role="alert">
                                    {{ session('success_msg') }}
                                </div>
                            @endif
                            @if ($errors->any())
                                <div class="alert alert-danger" style="margin-top: 10px" role="alert">
                                    @foreach ($errors->all() as $error)
                                        <div>{{$error}}</div>
                                    @endforeach
                                </div>
                            @endif

                            <form action="{{ route('public.send.contact') }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                <input type="hidden" name="subject" value="Liên hệ từ đối tác">
                                <input type="text" placeholder="Name" name="name" required value="{{ old('name') }}">
                                <input type="email" placeholder="Email" name="email" required>
                                <input type="text" placeholder="Question/Note" required name="content" value="{{ old('content') }}">
                                <label>
                                    <input type="file" id="file_choose" name="file">
                                    <span id="file_names">{{ __("file_attachment") }}</span>
                                </label>
                                <button type="submit">{{ __("submit_info") }}</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
{!! Theme::partial('footer') !!}
