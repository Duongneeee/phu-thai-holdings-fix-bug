<?php

Route::group(['namespace' => 'Botble\Companies\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'companies', 'as' => 'companies.'], function () {
            Route::resource('', 'CompaniesController')->parameters(['' => 'companies']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'CompaniesController@deletes',
                'permission' => 'companies.destroy',
            ]);
        });

        Route::group(['prefix' => 'business-categories', 'as' => 'business-categories.'], function () {
            Route::resource('', 'BusinessCategoriesController')->parameters(['' => 'business-categories']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'BusinessCategoriesController@deletes',
                'permission' => 'business-categories.destroy',
            ]);
        });

    });

});
