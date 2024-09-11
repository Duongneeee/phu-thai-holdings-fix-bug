<?php

Route::group(['namespace' => 'Botble\Redirects\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'redirects', 'as' => 'redirects.'], function () {
            Route::resource('', 'RedirectsController')->parameters(['' => 'redirects']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'RedirectsController@deletes',
                'permission' => 'redirects.destroy',
            ]);
        });
    });

});
