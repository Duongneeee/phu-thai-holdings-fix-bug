<?php

namespace Botble\Jobs\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Jobs\Http\Requests\JobsRequest;
use Botble\Jobs\Repositories\Interfaces\JobsInterface;
use Botble\Base\Http\Controllers\BaseController;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Exception;
use Botble\Jobs\Tables\JobsTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Jobs\Forms\JobsForm;
use Botble\Base\Forms\FormBuilder;

class JobsController extends BaseController
{
    /**
     * @var JobsInterface
     */
    protected $jobsRepository;

    /**
     * @param JobsInterface $jobsRepository
     */
    public function __construct(JobsInterface $jobsRepository)
    {
        $this->jobsRepository = $jobsRepository;
    }

    /**
     * @param JobsTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(JobsTable $table)
    {
        page_title()->setTitle(trans('plugins/jobs::jobs.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/jobs::jobs.create'));

        return $formBuilder->create(JobsForm::class)->renderForm();
    }

    /**
     * @param JobsRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(JobsRequest $request, BaseHttpResponse $response)
    {

        $request->merge([
            'job_deadline' => !empty($request->job_deadline) ? Carbon::createFromFormat('d/m/Y', $request->job_deadline) : now(),
            'job_contact' => !empty($request->job_contact) ? json_encode($request->job_contact) : null
        ]);

        $jobs = $this->jobsRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(JOBS_MODULE_SCREEN_NAME, $request, $jobs));

        return $response
            ->setPreviousUrl(route('jobs.index'))
            ->setNextUrl(route('jobs.edit', $jobs->id))
            ->setMessage(trans('core/base::notices.create_success_message'));
    }

    /**
     * @param int $id
     * @param Request $request
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function edit($id, FormBuilder $formBuilder, Request $request)
    {
        $jobs = $this->jobsRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $jobs));

        page_title()->setTitle(trans('plugins/jobs::jobs.edit') . ' "' . $jobs->name . '"');

        return $formBuilder->create(JobsForm::class, ['model' => $jobs])->renderForm();
    }

    /**
     * @param int $id
     * @param JobsRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, JobsRequest $request, BaseHttpResponse $response)
    {
        $jobs = $this->jobsRepository->findOrFail($id);

        $request->merge([
            'job_deadline' => !empty($request->job_deadline) ? Carbon::createFromFormat('d/m/Y', $request->job_deadline) : now(),
            'job_contact' => !empty($request->job_contact) ? json_encode($request->job_contact) : null
        ]);


        $jobs->fill($request->input());

        $jobs = $this->jobsRepository->createOrUpdate($jobs);

        event(new UpdatedContentEvent(JOBS_MODULE_SCREEN_NAME, $request, $jobs));

        return $response
            ->setPreviousUrl(route('jobs.index'))
            ->setMessage(trans('core/base::notices.update_success_message'));
    }

    /**
     * @param int $id
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function destroy(Request $request, $id, BaseHttpResponse $response)
    {
        try {
            $jobs = $this->jobsRepository->findOrFail($id);

            $this->jobsRepository->delete($jobs);

            event(new DeletedContentEvent(JOBS_MODULE_SCREEN_NAME, $request, $jobs));

            return $response->setMessage(trans('core/base::notices.delete_success_message'));
        } catch (Exception $exception) {
            return $response
                ->setError()
                ->setMessage($exception->getMessage());
        }
    }

    /**
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     * @throws Exception
     */
    public function deletes(Request $request, BaseHttpResponse $response)
    {
        $ids = $request->input('ids');
        if (empty($ids)) {
            return $response
                ->setError()
                ->setMessage(trans('core/base::notices.no_select'));
        }

        foreach ($ids as $id) {
            $jobs = $this->jobsRepository->findOrFail($id);
            $this->jobsRepository->delete($jobs);
            event(new DeletedContentEvent(JOBS_MODULE_SCREEN_NAME, $request, $jobs));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
