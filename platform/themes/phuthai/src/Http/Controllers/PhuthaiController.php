<?php

namespace Theme\Phuthai\Http\Controllers;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Blog\Repositories\Interfaces\CategoryInterface;
use Botble\Blog\Repositories\Interfaces\PostInterface;
use Botble\Contact\Enums\ContactStatusEnum;
use Botble\Jobs\Models\JobApply;
use Botble\Jobs\Models\Jobs;
use Botble\Jobs\Repositories\Interfaces\JobsInterface;
use Botble\SeoHelper\SeoOpenGraph;
use Botble\Theme\Http\Controllers\PublicController;
use Illuminate\Http\Request;
use Theme;

class PhuthaiController extends PublicController
{
    /**
     * {@inheritDoc}
     */
    public function getIndex()
    {
        return parent::getIndex();
    }

    /**
     * {@inheritDoc}
     */
    public function getView($key = null)
    {
        return parent::getView($key);
    }

    /**
     * {@inheritDoc}
     */
    public function getSiteMap()
    {
        return parent::getSiteMap();
    }

    public function getPost(Request $request)
    {
        $category = $request->category ?? null;
        if (!empty($category)) {
            $category = app(CategoryInterface::class)
                ->getFirstBy([
                    'id'     => $category,
                    'status' => BaseStatusEnum::PUBLISHED
                ], ['*'], ['slugable']);

            $allRelatedCategoryIds = $category->getChildrenIds($category, [$category->id]);

            $posts = app(PostInterface::class)
                ->getByCategory($allRelatedCategoryIds, (int)theme_option('number_of_posts_in_a_category', 12));

        } else {
            $posts = get_all_posts(
                true,
                theme_option('number_of_posts_in_a_category', 12),
                ['slugable', 'categories', 'categories.slugable', 'author']
            );
        }

        return response()->json([
            'status'        => 1,
            'data'          => view(Theme::getThemeNamespace() . '::views.templates.ajax_posts', compact('posts'))->render(),
            'has_more_page' => $posts->hasMorePages(),
            'next_page'     => $request->page + 1,
        ]);
    }

    public function getJobs(JobsInterface $jobRepository, Request $request)
    {
        $this->setSeoStaticPage(__("jobs"));

        $jobFields = getJobFields([
            'status' => 1,
        ]);

        $jobLocations = getJobLocations([
            'status' => 1,
        ]);

        $jobCompanies = getJobCompanies([
            'status' => 1,
        ]);

        $filters = $request->all();

        $filters = array_merge($filters, [
            'status' => true,
            'limit'  => 10,
        ]);

        $jobs = $jobRepository->filters($filters);

        $jobCounts = [];
        $jobCounts[] = [
            'id'    => 0,
            'name'  => __('all'),
            'count' => $jobRepository->jobCount([
                'status' => true,
            ])
        ];
        foreach ($jobCompanies as $company) {
            $jobCounts[] = [
                'id'    => $company->id,
                'name'  => $company->name,
                'count' => $jobRepository->jobCount([
                    'job_company_id' => $company->id,
                    'status'         => true,
                ])
            ];
        }

        return \Theme::scope('jobs.index', compact('jobs', 'jobFields', 'jobLocations', 'jobCompanies', 'jobCounts'))->render();
    }

    public function getDetailJob($slug, JobsInterface $jobRepository)
    {
        $slugData = \SlugHelper::getSlug($slug, \SlugHelper::getPrefix(Jobs::class), Jobs::class);

        if (empty($slugData)) {
            abort(404);
        }

        $job = $jobRepository->findOrFail($slugData->reference_id);

        $ortherJobs = $jobRepository->filters([
            'limit'     => 5,
            'not_in_id' => [$job->id],
            'paginate'  => false
        ]);

        \SeoHelper::setTitle($job->name)
            ->setDescription($job->description);

        $meta = new SeoOpenGraph;
        $meta->setDescription($job->description);
        $meta->setUrl($job->url);
        $meta->setTitle($job->name);

        return \Theme::scope('jobs.detail', compact('job', 'ortherJobs'))->render();
    }

    public function postJobApply(Request $request, BaseHttpResponse $response)
    {
        JobApply::create([
            'job_id' => $request->input('job_id'),
            'name'   => $request->input('name'),
            'email'  => $request->input('email'),
            'url'    => url()->current(),
            'status' => ContactStatusEnum::UNREAD,
        ]);

        return $response->setMessage(__('apply_job_success'));
    }

}
