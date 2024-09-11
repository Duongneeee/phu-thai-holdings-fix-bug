<?php

namespace Botble\Jobs\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Jobs\Http\Requests\JobLocationsRequest;
use Botble\Jobs\Repositories\Interfaces\JobLocationsInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Jobs\Tables\JobLocationsTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Jobs\Forms\JobLocationsForm;
use Botble\Base\Forms\FormBuilder;

class JobLocationsController extends BaseController
{
    /**
     * @var JobLocationsInterface
     */
    protected $jobLocationsRepository;

    /**
     * @param JobLocationsInterface $jobLocationsRepository
     */
    public function __construct(JobLocationsInterface $jobLocationsRepository)
    {
        $this->jobLocationsRepository = $jobLocationsRepository;
    }

    /**
     * @param JobLocationsTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(JobLocationsTable $table)
    {
        page_title()->setTitle(trans('plugins/jobs::job-locations.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/jobs::job-locations.create'));

        return $formBuilder->create(JobLocationsForm::class)->renderForm();
    }

    /**
     * @param JobLocationsRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(JobLocationsRequest $request, BaseHttpResponse $response)
    {
        $idx = $request->input('idx');

        $request->merge([
            'idx'  => !empty($idx) ? $idx : $this->jobLocationsRepository->count() + 1,
        ]);

        $jobLocations = $this->jobLocationsRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(JOB_LOCATIONS_MODULE_SCREEN_NAME, $request, $jobLocations));

        return $response
            ->setPreviousUrl(route('job-locations.index'))
            ->setNextUrl(route('job-locations.edit', $jobLocations->id))
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
        $jobLocations = $this->jobLocationsRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $jobLocations));

        page_title()->setTitle(trans('plugins/jobs::job-locations.edit') . ' "' . $jobLocations->name . '"');

        return $formBuilder->create(JobLocationsForm::class, ['model' => $jobLocations])->renderForm();
    }

    /**
     * @param int $id
     * @param JobLocationsRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, JobLocationsRequest $request, BaseHttpResponse $response)
    {
        $jobLocations = $this->jobLocationsRepository->findOrFail($id);

        $jobLocations->fill($request->input());

        $jobLocations = $this->jobLocationsRepository->createOrUpdate($jobLocations);

        event(new UpdatedContentEvent(JOB_LOCATIONS_MODULE_SCREEN_NAME, $request, $jobLocations));

        return $response
            ->setPreviousUrl(route('job-locations.index'))
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
            $jobLocations = $this->jobLocationsRepository->findOrFail($id);

            $this->jobLocationsRepository->delete($jobLocations);

            event(new DeletedContentEvent(JOB_LOCATIONS_MODULE_SCREEN_NAME, $request, $jobLocations));

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
            $jobLocations = $this->jobLocationsRepository->findOrFail($id);
            $this->jobLocationsRepository->delete($jobLocations);
            event(new DeletedContentEvent(JOB_LOCATIONS_MODULE_SCREEN_NAME, $request, $jobLocations));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
