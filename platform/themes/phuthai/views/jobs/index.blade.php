<main>
    <section class="banner_page banner_page_black relative">
        <img src="{{ new_theme_assets('images/jobs.png') }}" alt="">
        <div class="banner_page_abs absolute flex-center">
            <div class="containers">
                <div class="title_page text-center" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                    {{ __('jobs') }}
                </div>
                <p class="desc text-center" data-aos="fade-up" data-aos-duration="1500" data-delay="500">
                    {{ __("job_desc_text") }}
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
                        <li><span>{{ __('jobs') }}</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <section class="jobs pd-60">
        <div class="containers">
            <div class="jobs_find">
                <form action="" id="form-job-search">
                    <input type="hidden" name="job_company_id" value="{{ request('job_company_id') }}">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="jobs_select">
                                <i class="fal fa-search"></i>
                                <select name="job_field_id" class="filed_search_job">
                                    <option value="">{{ __("selected_category") }}</option>
                                    @foreach($jobFields as $jobField)
                                        <option value="{{ $jobField->id }}" {{ $jobField->id == request('job_field_id') ? 'selected' : null }}>{{ $jobField->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="jobs_select">
                                <i class="fal fa-search"></i>
                                <select name="job_location_id" class="filed_search_job">
                                    <option value="">{{ __("selected_location") }}</option>
                                    @foreach($jobLocations as $jobLocation)
                                        <option value="{{ $jobLocation->id }}" {{ $jobLocation->id == request('job_location_id') ? 'selected' : null }}>{{ $jobLocation->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <ul class="jobs_nav mg-30 flex-center">
                @foreach($jobCounts as $jobCount)
                    <li class="{{ $jobCount['id'] == request('job_company_id', 0) ? 'active' : null }}">
                        <a href="{{ route('public.jobs.index', ['job_company_id' => $jobCount['id']]) }}" title="">
                            {{ $jobCount['name'] }}<span>{{ $jobCount['count'] }}</span>
                        </a>
                    </li>
                @endforeach
            </ul>
            <div class="jobs_list">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">{{ __("order") }}</th>
                            <th scope="col">{{ __("job_title") }}</th>
                            <th scope="col">{{ __("company") }}</th>
                            <th scope="col">{{ __("location") }}</th>
                            <th scope="col">{{ __("deadline") }}</th>
                        </tr>
                        </thead>
                        <tbody>
                        @if(count($jobs))
                            @foreach($jobs ?? [] as $job)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td><a href="{{ $job->url }}" title="">{{ $job->name }}</a></td>
                                    <td>
                                        @if(!empty($job->jobCompany))
                                            {{ $job->jobCompany->name }}
                                        @else
                                            N/A
                                        @endif
                                    </td>
                                    <td>
                                        @if(!empty($job->jobLocation))
                                            {{ $job->jobLocation->name }}
                                        @else
                                            N/A
                                        @endif
                                    </td>
                                    <td>
                                        {{ $job->job_deadline_text }}
                                    </td>
                                </tr>
                            @endforeach
                        @else
                            <tr>
                                <td colspan="5" class="text-center">{{ __('no_data') }}</td>
                            </tr>
                        @endif
                        </tbody>
                    </table>
                </div>
                <ul class="pagi flex-center-center mgt-60">
                    {!! $jobs->withQueryString()->links(Theme::getThemeNamespace() . '::partials.custom-pagination') !!}
                </ul>
            </div>
        </div>
    </section>
</main>
