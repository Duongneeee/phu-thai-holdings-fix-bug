<?php

namespace Botble\LoginSso\Http\Controllers;

use Assets;
use BaseHelper;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Illuminate\Http\Request;
use Botble\ACL\Models\User;
use Botble\LoginSso\Models\LoginSso;
use Illuminate\Support\Facades\Http;

class ConfigLoginSsoController extends BaseController
{
    public function getSetting()
    {
        page_title()->setTitle("Login Sso");

        return view('plugins/login-sso::config');
    }

    public function postSetting(Request $request, BaseHttpResponse $response)
    {
        $input = $request->except('_token');
        foreach ($input as $key => $value){
            setting()->set($key, (string)$value);
        }
        setting()->save();

        return $response
            ->setPreviousUrl(route('sso-setting'))
            ->setMessage("Cập nhật thành công.");
    }
}