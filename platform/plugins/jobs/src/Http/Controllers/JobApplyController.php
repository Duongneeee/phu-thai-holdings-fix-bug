<?php

namespace Botble\Jobs\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Jobs\Http\Requests\JobApplyRequest;
use Botble\Jobs\Repositories\Interfaces\JobApplyInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Jobs\Tables\JobApplyTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Jobs\Forms\JobApplyForm;
use Botble\Base\Forms\FormBuilder;

class JobApplyController extends BaseController
{
    /**
     * @var JobApplyInterface
     */
    protected $jobApplyRepository;

    /**
     * @param JobApplyInterface $jobApplyRepository
     */
    public function __construct(JobApplyInterface $jobApplyRepository)
    {
        $this->jobApplyRepository = $jobApplyRepository;
    }

    /**
     * @param JobApplyTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(JobApplyTable $table)
    {
        page_title()->setTitle(trans('plugins/jobs::job-apply.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/jobs::job-apply.create'));

        return $formBuilder->create(JobApplyForm::class)->renderForm();
    }

    /**
     * @param JobApplyRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(JobApplyRequest $request, BaseHttpResponse $response)
    {
        $jobApply = $this->jobApplyRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(JOB_APPLY_MODULE_SCREEN_NAME, $request, $jobApply));

        return $response
            ->setPreviousUrl(route('job-apply.index'))
            ->setNextUrl(route('job-apply.edit', $jobApply->id))
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
        $jobApply = $this->jobApplyRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $jobApply));

        page_title()->setTitle(trans('plugins/jobs::job-apply.edit') . ' "' . $jobApply->name . '"');

        return $formBuilder->create(JobApplyForm::class, ['model' => $jobApply])->renderForm();
    }

    /**
     * @param int $id
     * @param JobApplyRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, JobApplyRequest $request, BaseHttpResponse $response)
    {
        $jobApply = $this->jobApplyRepository->findOrFail($id);

        $jobApply->fill($request->input());

        $jobApply = $this->jobApplyRepository->createOrUpdate($jobApply);

        event(new UpdatedContentEvent(JOB_APPLY_MODULE_SCREEN_NAME, $request, $jobApply));

        return $response
            ->setPreviousUrl(route('job-apply.index'))
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
            $jobApply = $this->jobApplyRepository->findOrFail($id);

            $this->jobApplyRepository->delete($jobApply);

            event(new DeletedContentEvent(JOB_APPLY_MODULE_SCREEN_NAME, $request, $jobApply));

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
            $jobApply = $this->jobApplyRepository->findOrFail($id);
            $this->jobApplyRepository->delete($jobApply);
            event(new DeletedContentEvent(JOB_APPLY_MODULE_SCREEN_NAME, $request, $jobApply));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
