<?php

Route::group(['namespace' => 'Botble\Jobs\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'jobs', 'as' => 'jobs.'], function () {
            Route::resource('', 'JobsController')->parameters(['' => 'jobs']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'JobsController@deletes',
                'permission' => 'jobs.destroy',
            ]);
        });

        Route::group(['prefix' => 'job-fields', 'as' => 'job-fields.'], function () {
            Route::resource('', 'JobFieldsController')->parameters(['' => 'job-fields']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'JobFieldsController@deletes',
                'permission' => 'job-fields.destroy',
            ]);
        });

        Route::group(['prefix' => 'job-locations', 'as' => 'job-locations.'], function () {
            Route::resource('', 'JobLocationsController')->parameters(['' => 'job-locations']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'JobLocationsController@deletes',
                'permission' => 'job-locations.destroy',
            ]);
        });

        Route::group(['prefix' => 'job-companies', 'as' => 'job-companies.'], function () {
            Route::resource('', 'JobCompaniesController')->parameters(['' => 'job-companies']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'JobCompaniesController@deletes',
                'permission' => 'job-companies.destroy',
            ]);
        });

        Route::group(['prefix' => 'job-applies', 'as' => 'job-apply.'], function () {
            Route::resource('', 'JobApplyController')->parameters(['' => 'job-apply']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'JobApplyController@deletes',
                'permission' => 'job-apply.destroy',
            ]);
        });


    });

});
