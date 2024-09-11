<?php

namespace Botble\Companies\Providers;

use Botble\Companies\Models\Companies;
use Illuminate\Support\ServiceProvider;
use Botble\Companies\Repositories\Caches\CompaniesCacheDecorator;
use Botble\Companies\Repositories\Eloquent\CompaniesRepository;
use Botble\Companies\Repositories\Interfaces\CompaniesInterface;
use Illuminate\Support\Facades\Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Routing\Events\RouteMatched;

class CompaniesServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->app->bind(CompaniesInterface::class, function () {
            return new CompaniesCacheDecorator(new CompaniesRepository(new Companies));
        });

        $this->app->bind(\Botble\Companies\Repositories\Interfaces\BusinessCategoriesInterface::class, function () {
            return new \Botble\Companies\Repositories\Caches\BusinessCategoriesCacheDecorator(
                new \Botble\Companies\Repositories\Eloquent\BusinessCategoriesRepository(new \Botble\Companies\Models\BusinessCategories)
            );
        });

        $this->setNamespace('plugins/companies')->loadHelpers();
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
                \Language::registerModule([Companies::class]);
                \Language::registerModule([\Botble\Companies\Models\BusinessCategories::class]);
            });
        }

        Event::listen(RouteMatched::class, function () {
            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-companies',
                'priority'    => 5,
                'parent_id'   => null,
                'name'        => 'plugins/companies::companies.name',
                'icon'        => 'fa fa-tags',
                'url'         => route('companies.index'),
                'permissions' => ['companies.index'],
            ]);

            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-companies-child',
                'priority'    => 1,
                'parent_id'   => "cms-plugins-companies",
                'name'        => 'plugins/companies::companies.name',
                'icon'        => null,
                'url'         => route('companies.index'),
                'permissions' => ['companies.index'],
            ]);

            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-business-categories',
                'priority'    => 2,
                'parent_id'   => 'cms-plugins-companies',
                'name'        => 'plugins/companies::business-categories.name',
                'icon'        => null,
                'url'         => route('business-categories.index'),
                'permissions' => ['business-categories.index'],
            ]);

        });
    }
}
