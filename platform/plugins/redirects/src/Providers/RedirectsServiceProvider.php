<?php

namespace Botble\Redirects\Providers;

use Botble\Redirects\Models\Redirects;
use Illuminate\Support\ServiceProvider;
use Botble\Redirects\Repositories\Caches\RedirectsCacheDecorator;
use Botble\Redirects\Repositories\Eloquent\RedirectsRepository;
use Botble\Redirects\Repositories\Interfaces\RedirectsInterface;
use Illuminate\Support\Facades\Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Routing\Events\RouteMatched;

class RedirectsServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->app->bind(RedirectsInterface::class, function () {
            return new RedirectsCacheDecorator(new RedirectsRepository(new Redirects));
        });

        $this->setNamespace('plugins/redirects')->loadHelpers();
    }

    public function boot()
    {
        $this
            ->loadAndPublishConfigurations(['permissions'])
            ->loadMigrations()
            ->loadAndPublishTranslations()
            ->loadAndPublishViews()
            ->loadRoutes(['web']);

        Event::listen(RouteMatched::class, function () {
            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-redirects',
                'priority'    => 5,
                'parent_id'   => 'cms-core-settings',
                'name'        => 'plugins/redirects::redirects.name',
                'icon'        => "",
                'url'         => route('redirects.index'),
                'permissions' => ['redirects.index'],
            ]);
        });
    }
}
