<main>
    <section class="banner_page banner_page_black relative">
        <img src="{{ new_theme_assets('images/jobs.png') }}" alt="">
        <div class="banner_page_abs absolute flex-center">
            <div class="containers">
                <p class="font-24 font-weight-bold mgb-20 text-center" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                    {{ __('jobs') }}
                </p>
                <div class="title_page text-center" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                    {{ $job->name }}
                </div>
            </div>
        </div>
    </section>
    <section class="page_head page_head_black" data-aos="fade-down" data-aos-duration="1500" data-delay="1000">
        <div class="containerss">
            <div class="row">
                <div class="col-md-6">
                    <ul class="breads flex-center">
                        <li><a href="{{ route('public.index') }}" title="">{{ __("Home") }}</a> </li>
                        <li><a href="{{ route('public.jobs.index') }}" title="">{{ __('jobs') }}</a> </li>
                        <li><span>{{ $job->name }}</span> </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <section class="jobs_detail pd-90">
        <div class="containers">
            <div class="font-24 mgb-20 text-uppercase">{{ __("vacancies") }}</div>
            <div class="title_index mgb-60 text-uppercase" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                <span>{{ $job->name }}</span>
            </div>
            <div class="row">
                <div class="col-md-8 pdr-90">
                    <div class="jobs_item mgb-20">
                        <h2 class="font-24 font-weight-bold text-uppercase mgb-20">1. {{ trans('job_description') }}</h2>
                        {!! $job->job_desc !!}
                    </div>
                    <div class="jobs_item mgb-20">
                        <h2 class="font-24 font-weight-bold text-uppercase mgb-20">2. {{ trans('job_requirement') }}</h2>
                        {!! $job->job_requirements !!}
                    </div>
                    <div class="jobs_flex">
                        <div class="jobs_item">
                            <h2 class="font-24 font-weight-bold text-uppercase mgb-20">3. {{ trans('job_benefit') }}</h2>

                            {!! $job->job_benefits !!}
                        </div>
                        @php
                            $jobContact = json_decode($job->job_contact, true);
                        @endphp
                        <div class="jobs_item">
                            <h2 class="font-24 font-weight-bold text-uppercase mgb-20">4. {{ trans('job_contact') }}</h2>
                            @if(!empty($jobContact))
                                @foreach($jobContact as $contact)
                                    <div class="jobs_a">
                                        <p>{{ get_item_repeater_filed($contact, 'properties_name') }}</p>
                                        <a href="javascript:;" title="">{{ get_item_repeater_filed($contact, 'properties_value') }}</a>
                                    </div>
                                @endforeach
                            @endif
                            <div class="jobs_a">
                                <p>Web</p><a href="{{ url("/") }}" target="_blank" title="">{{ url("/") }}</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="jobs_form">
                        <div class="font-30 font-600 text-white">{{ __("apply_for_job") }}</div>
                        <p class="text-white mg-15">
                            {{ __("apply_for_job_text") }}
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

                        <form action="{{ route('public.job-apply') }}" method="POST">
                            @csrf
                            <input type="hidden" name="job_id" value="{{ $job->id }}">
                            <input type="text" placeholder="Name" name="name" required>
                            <input type="email" placeholder="Email" name="email" required>
                            <button type="submit">{{ __("job_submit") }}</button>
                        </form>
                    </div>
                    @if(count($ortherJobs))
                        <div class="jobs_rel mgt-30">
                            <h4 class="font-24 font-weight-bold mgb-10 text-uppercase">
                                {{ __('job_related') }}
                            </h4>
                            @foreach($ortherJobs as $item)
                                <div class="jb">
                                    <div class="flex-center-between">
                                        <a href="{{ $item->url }}" title="{{ $item->name }}" class="font-weight-bold">{{ $item->name }}</a>
                                        @if(!empty($item->jobCompany))
                                            <span class="font-weight-bold">
                                                {{ $item->jobCompany->name }}
                                            </span>
                                        @endif
                                    </div>
                                    <p>
                                        @if(!empty($item->jobLocation))
                                           {{ $item->jobLocation->name }}
                                        @endif
                                        {{ $item->job_deadline_text }}
                                    </p>
                                </div>
                            @endforeach
                        </div>
                    </div>
                @endif
            </div>
        </div>
    </section>
</main>
