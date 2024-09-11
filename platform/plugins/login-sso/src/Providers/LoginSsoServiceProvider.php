<?php

namespace Botble\LoginSso\Providers;

use Botble\LoginSso\Models\LoginSso;
use Illuminate\Support\ServiceProvider;
use Botble\LoginSso\Repositories\Caches\LoginSsoCacheDecorator;
use Botble\LoginSso\Repositories\Eloquent\LoginSsoRepository;
use Botble\LoginSso\Repositories\Interfaces\LoginSsoInterface;
use Illuminate\Support\Facades\Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Routing\Events\RouteMatched;

class LoginSsoServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->setNamespace('plugins/login-sso')->loadHelpers();
    }

    public function boot()
    {
        $this
            ->loadMigrations()
            ->loadAndPublishConfigurations('sso')
            ->loadAndPublishTranslations()
            ->loadAndPublishViews()
            ->loadRoutes(['web']);

        add_filter(BASE_FILTER_AFTER_LOGIN_OR_REGISTER_FORM, function (){
            return "<p><a class='lost-pass-link' style='margin-top: 10px; display: block' href=".route('access.send-otp.sso').">Đăng nhập SSO</a></p>";
        }, 21, 2);


        Event::listen(RouteMatched::class, function () {
            dashboard_menu()->registerItem([
                'id'          => 'cms-sso-login-settings',
                'priority'    => 120,
                'parent_id'   => "cms-core-settings",
                'name'        => 'Sso login',
                'icon'        => '',
                'url'         => route('sso-setting'),
                'permissions' => ['settings.options'],
            ]);
        });
    }
}
