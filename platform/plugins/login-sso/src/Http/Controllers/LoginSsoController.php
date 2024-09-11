<?php

namespace Botble\LoginSso\Http\Controllers;

use Assets;
use BaseHelper;
use Botble\ACL\Repositories\Interfaces\UserInterface;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Illuminate\Http\Request;
use Botble\ACL\Models\User;
use Botble\LoginSso\Models\LoginSso;
use Illuminate\Support\Facades\Http;

class LoginSsoController extends BaseController
{

    protected $response;

    /**
     * Create a new controller instance.
     *
     * @param  BaseHttpResponse  $response
     */
    public function __construct(BaseHttpResponse $response)
    {
        $this->middleware('guest', ['except' => 'logout']);
        $this->response = $response;
    }

    public function getLoginSso(Request $request)
    {
        page_title()->setTitle("Login SSO");

        Assets::addScripts(['jquery-validation'])
            ->addScriptsDirectly('vendor/core/core/acl/js/login.js')
            ->addStylesDirectly('vendor/core/core/acl/css/animate.min.css')
            ->addStylesDirectly('vendor/core/core/acl/css/login.css')
            ->removeStyles([
                'select2',
                'fancybox',
                'spectrum',
                'simple-line-icons',
                'custom-scrollbar',
                'datepicker',
            ])
            ->removeScripts([
                'select2',
                'fancybox',
                'cookie',
            ]);

        return view('plugins/login-sso::sso');
    }

    public function postLoginSso(Request $request)
    {
        $this->validate($request, [
            'otp' => "required"
        ], [
            'otp.required' => "Bạn chưa nhập OTP"
        ]);

        try {
            $res = Http::withHeaders([
                "Content-Type" => "application/json"
            ])->post(setting('sso_login_endpoint').'api/services/sso/otp/verification', [
                "token"     => setting('sso_login_token'),
                "otp"       => $request->input('otp'),
                "ip_client" => $request->ip(),
            ]);
            $res = $res->json();
            if ($res['status']) {
                $user = User::where('super_user', 1)->first();
                app(UserInterface::class)->update(['id' => $user->id], ['last_login' => now()]);
                auth()->loginUsingId($user->id);
                return redirect()->route('dashboard.index');
            }
            return $this->response
                ->setError()
                ->setMessage($res['messages']);
        } catch (\Exception $exception) {
            \Log::debug($exception->getMessage());
            return $this->response
                ->setError()
                ->setMessage("Có lỗi sảy ra, vui lòng thử lại sau.");
        }
    }

    public function sendOtp(Request $request)
    {
        try {
            $res = Http::withHeaders([
                "Content-Type" => "application/json"
            ])->post(setting('sso_login_endpoint').'api/services/sso/otp/send/telegram', [
                "token"     => setting('sso_login_token'),
                "ip_client" => $request->ip(),
            ]);
            $res = $res->json();
            if (empty($res['status'])) {
                return $this->response
                    ->setError()
                    ->setMessage($res['messages']);
            }
        }catch (\Exception $exception) {
            \Log::debug($exception->getMessage());
            return $this->response
                ->setError()
                ->setMessage("Có lỗi sảy ra, vui lòng thử lại sau.");
        }

        return $this->response
            ->setMessage("Mã Otp đã được gửi đến Telegram")->setNextUrl(BaseHelper::getAdminPrefix().'/sso');
    }
}
