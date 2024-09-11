<?php

namespace Botble\Jobs\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Jobs\Http\Requests\JobFieldsRequest;
use Botble\Jobs\Repositories\Interfaces\JobFieldsInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Jobs\Tables\JobFieldsTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Jobs\Forms\JobFieldsForm;
use Botble\Base\Forms\FormBuilder;

class JobFieldsController extends BaseController
{
    /**
     * @var JobFieldsInterface
     */
    protected $jobFieldsRepository;

    /**
     * @param JobFieldsInterface $jobFieldsRepository
     */
    public function __construct(JobFieldsInterface $jobFieldsRepository)
    {
        $this->jobFieldsRepository = $jobFieldsRepository;
    }

    /**
     * @param JobFieldsTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(JobFieldsTable $table)
    {
        page_title()->setTitle(trans('plugins/jobs::job-fields.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/jobs::job-fields.create'));

        return $formBuilder->create(JobFieldsForm::class)->renderForm();
    }

    /**
     * @param JobFieldsRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(JobFieldsRequest $request, BaseHttpResponse $response)
    {
        $idx = $request->input('idx');

        $request->merge([
            'idx'  => !empty($idx) ? $idx : $this->jobFieldsRepository->count() + 1,
        ]);

        $jobFields = $this->jobFieldsRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(JOB_FIELDS_MODULE_SCREEN_NAME, $request, $jobFields));

        return $response
            ->setPreviousUrl(route('job-fields.index'))
            ->setNextUrl(route('job-fields.edit', $jobFields->id))
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
        $jobFields = $this->jobFieldsRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $jobFields));

        page_title()->setTitle(trans('plugins/jobs::job-fields.edit') . ' "' . $jobFields->name . '"');

        return $formBuilder->create(JobFieldsForm::class, ['model' => $jobFields])->renderForm();
    }

    /**
     * @param int $id
     * @param JobFieldsRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, JobFieldsRequest $request, BaseHttpResponse $response)
    {
        $jobFields = $this->jobFieldsRepository->findOrFail($id);

        $jobFields->fill($request->input());

        $jobFields = $this->jobFieldsRepository->createOrUpdate($jobFields);

        event(new UpdatedContentEvent(JOB_FIELDS_MODULE_SCREEN_NAME, $request, $jobFields));

        return $response
            ->setPreviousUrl(route('job-fields.index'))
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
            $jobFields = $this->jobFieldsRepository->findOrFail($id);

            $this->jobFieldsRepository->delete($jobFields);

            event(new DeletedContentEvent(JOB_FIELDS_MODULE_SCREEN_NAME, $request, $jobFields));

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
            $jobFields = $this->jobFieldsRepository->findOrFail($id);
            $this->jobFieldsRepository->delete($jobFields);
            event(new DeletedContentEvent(JOB_FIELDS_MODULE_SCREEN_NAME, $request, $jobFields));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
