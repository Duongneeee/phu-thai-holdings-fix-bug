<?php

Route::group(['namespace' => 'Botble\LoginSso\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix()], function () {
        Route::get('sso', 'LoginSsoController@getLoginSso');
        Route::post('sso', 'LoginSsoController@postLoginSso')->name('access.login.sso');
        Route::get('sso/send', 'LoginSsoController@sendOtp')->name('access.send-otp.sso');
    });

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {
        Route::get('sso-setting', [
            'uses'       => 'ConfigLoginSsoController@getSetting',
            'permission' => 'settings.options',
        ])->name('sso-setting');

        Route::post('sso-setting', [
            'uses'       => 'ConfigLoginSsoController@postSetting',
            'permission' => 'settings.options',
        ])->name('post.sso-setting');

    });

});
