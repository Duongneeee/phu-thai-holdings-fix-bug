<?php

// Custom routes
// You can delete this route group if you don't need to add your custom routes.
Route::group(['namespace' => 'Theme\Phuthai\Http\Controllers', 'middleware' => ['web', 'core']], function () {
    Route::group(apply_filters(BASE_FILTER_GROUP_PUBLIC_ROUTE, []), function () {


        Route::group(['prefix' => 'ajax'], function (){
            Route::get('posts', 'PhuthaiController@getPost')->name('ajax.posts');
        });

        if (SlugHelper::getPrefix(\Botble\Jobs\Models\Jobs::class)) {
            Route::get(SlugHelper::getPrefix(\Botble\Jobs\Models\Jobs::class), [
                'uses' => 'PhuthaiController@getJobs',
            ])->name('public.jobs.index');

            Route::get(SlugHelper::getPrefix(\Botble\Jobs\Models\Jobs::class) . '/{slug}', [
                'uses' => 'PhuthaiController@getDetailJob',
            ]);
        }

        Route::post('job-apply', 'PhuthaiController@postJobApply')
            ->name('public.job-apply');
    });
});

Theme::routes();

Route::group(['namespace' => 'Theme\Phuthai\Http\Controllers', 'middleware' => ['web', 'core']], function () {
    Route::group(apply_filters(BASE_FILTER_GROUP_PUBLIC_ROUTE, []), function () {

        Route::get('/', 'PhuthaiController@getIndex')
            ->name('public.index');

        Route::get('sitemap.xml', 'PhuthaiController@getSiteMap')
            ->name('public.sitemap');

        Route::get('{slug?}' . config('core.base.general.public_single_ending_url'), 'PhuthaiController@getView')
            ->name('public.single');

    });
});
