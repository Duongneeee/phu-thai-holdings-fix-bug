<?php

namespace Botble\Jobs\Providers;

use Botble\Jobs\Models\Jobs;
use Illuminate\Support\ServiceProvider;
use Botble\Jobs\Repositories\Caches\JobsCacheDecorator;
use Botble\Jobs\Repositories\Eloquent\JobsRepository;
use Botble\Jobs\Repositories\Interfaces\JobsInterface;
use Illuminate\Support\Facades\Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Routing\Events\RouteMatched;

class JobsServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->app->bind(JobsInterface::class, function () {
            return new JobsCacheDecorator(new JobsRepository(new Jobs));
        });

        $this->app->bind(\Botble\Jobs\Repositories\Interfaces\JobFieldsInterface::class, function () {
            return new \Botble\Jobs\Repositories\Caches\JobFieldsCacheDecorator(
                new \Botble\Jobs\Repositories\Eloquent\JobFieldsRepository(new \Botble\Jobs\Models\JobFields)
            );
        });

        $this->app->bind(\Botble\Jobs\Repositories\Interfaces\JobLocationsInterface::class, function () {
            return new \Botble\Jobs\Repositories\Caches\JobLocationsCacheDecorator(
                new \Botble\Jobs\Repositories\Eloquent\JobLocationsRepository(new \Botble\Jobs\Models\JobLocations)
            );
        });

        $this->app->bind(\Botble\Jobs\Repositories\Interfaces\JobCompaniesInterface::class, function () {
            return new \Botble\Jobs\Repositories\Caches\JobCompaniesCacheDecorator(
                new \Botble\Jobs\Repositories\Eloquent\JobCompaniesRepository(new \Botble\Jobs\Models\JobCompanies)
            );
        });

        $this->app->bind(\Botble\Jobs\Repositories\Interfaces\JobApplyInterface::class, function () {
            return new \Botble\Jobs\Repositories\Caches\JobApplyCacheDecorator(
                new \Botble\Jobs\Repositories\Eloquent\JobApplyRepository(new \Botble\Jobs\Models\JobApply)
            );
        });

        $this->setNamespace('plugins/jobs')->loadHelpers();
    }

    public function boot()
    {
        $this
            ->loadAndPublishConfigurations(['permissions'])
            ->loadMigrations()
            ->loadAndPublishTranslations()
            ->loadAndPublishViews()
            ->loadRoutes(['web']);

        if (defined('LANGUAGE_MODULE_SCREEN_NAME')) {
            $this->app->booted(function () {
                \Language::registerModule([Jobs::class]);
                \Language::registerModule([\Botble\Jobs\Models\JobFields::class]);
                \Language::registerModule([\Botble\Jobs\Models\JobLocations::class]);
                \Language::registerModule([\Botble\Jobs\Models\JobCompanies::class]);
            });
        }

        \SlugHelper::registerModule(Jobs::class, 'Jobs');
        \SlugHelper::setPrefix(Jobs::class, 'jobs', true);


        $this->app->booted(function (){
            \SeoHelper::registerModule([Jobs::class]);
        });


        Event::listen(RouteMatched::class, function () {
            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-jobs',
                'priority'    => 5,
                'parent_id'   => null,
                'name'        => 'plugins/jobs::jobs.name',
                'icon'        => 'fa fa-tags',
                'url'         => route('jobs.index'),
                'permissions' => ['jobs.index'],
            ]);

            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-job-child',
                'priority'    => 1,
                'parent_id'   => "cms-plugins-jobs",
                'name'        => 'plugins/jobs::jobs.name',
                'icon'        => null,
                'url'         => route('jobs.index'),
                'permissions' => ['jobs.index'],
            ]);

            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-job-fields',
                'priority'    => 4,
                'parent_id'   => 'cms-plugins-jobs',
                'name'        => 'plugins/jobs::job-fields.name',
                'icon'        => null,
                'url'         => route('job-fields.index'),
                'permissions' => ['job-fields.index'],
            ]);

            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-job-locations',
                'priority'    => 3,
                'parent_id'   => 'cms-plugins-jobs',
                'name'        => 'plugins/jobs::job-locations.name',
                'icon'        => null,
                'url'         => route('job-locations.index'),
                'permissions' => ['job-locations.index'],
            ]);

            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-job-companies',
                'priority'    => 2,
                'parent_id'   => 'cms-plugins-jobs',
                'name'        => 'plugins/jobs::job-companies.name',
                'icon'        => null,
                'url'         => route('job-companies.index'),
                'permissions' => ['job-companies.index'],
            ]);

            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-job-apply',
                'priority'    => 5,
                'parent_id'   => 'cms-plugins-jobs',
                'name'        => 'plugins/jobs::job-apply.name',
                'icon'        => null,
                'url'         => route('job-apply.index'),
                'permissions' => ['job-apply.index'],
            ]);



        });
    }
}
