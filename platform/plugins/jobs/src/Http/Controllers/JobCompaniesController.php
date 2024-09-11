<?php

namespace Botble\Jobs\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Jobs\Http\Requests\JobCompaniesRequest;
use Botble\Jobs\Repositories\Interfaces\JobCompaniesInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Jobs\Tables\JobCompaniesTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Jobs\Forms\JobCompaniesForm;
use Botble\Base\Forms\FormBuilder;

class JobCompaniesController extends BaseController
{
    /**
     * @var JobCompaniesInterface
     */
    protected $jobCompaniesRepository;

    /**
     * @param JobCompaniesInterface $jobCompaniesRepository
     */
    public function __construct(JobCompaniesInterface $jobCompaniesRepository)
    {
        $this->jobCompaniesRepository = $jobCompaniesRepository;
    }

    /**
     * @param JobCompaniesTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(JobCompaniesTable $table)
    {
        page_title()->setTitle(trans('plugins/jobs::job-companies.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/jobs::job-companies.create'));

        return $formBuilder->create(JobCompaniesForm::class)->renderForm();
    }

    /**
     * @param JobCompaniesRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(JobCompaniesRequest $request, BaseHttpResponse $response)
    {

        $idx = $request->input('idx');

        $request->merge([
            'idx'  => !empty($idx) ? $idx : $this->jobCompaniesRepository->count() + 1,
        ]);

        $jobCompanies = $this->jobCompaniesRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(JOB_COMPANIES_MODULE_SCREEN_NAME, $request, $jobCompanies));

        return $response
            ->setPreviousUrl(route('job-companies.index'))
            ->setNextUrl(route('job-companies.edit', $jobCompanies->id))
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
        $jobCompanies = $this->jobCompaniesRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $jobCompanies));

        page_title()->setTitle(trans('plugins/jobs::job-companies.edit') . ' "' . $jobCompanies->name . '"');

        return $formBuilder->create(JobCompaniesForm::class, ['model' => $jobCompanies])->renderForm();
    }

    /**
     * @param int $id
     * @param JobCompaniesRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, JobCompaniesRequest $request, BaseHttpResponse $response)
    {
        $jobCompanies = $this->jobCompaniesRepository->findOrFail($id);

        $jobCompanies->fill($request->input());

        $jobCompanies = $this->jobCompaniesRepository->createOrUpdate($jobCompanies);

        event(new UpdatedContentEvent(JOB_COMPANIES_MODULE_SCREEN_NAME, $request, $jobCompanies));

        return $response
            ->setPreviousUrl(route('job-companies.index'))
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
            $jobCompanies = $this->jobCompaniesRepository->findOrFail($id);

            $this->jobCompaniesRepository->delete($jobCompanies);

            event(new DeletedContentEvent(JOB_COMPANIES_MODULE_SCREEN_NAME, $request, $jobCompanies));

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
            $jobCompanies = $this->jobCompaniesRepository->findOrFail($id);
            $this->jobCompaniesRepository->delete($jobCompanies);
            event(new DeletedContentEvent(JOB_COMPANIES_MODULE_SCREEN_NAME, $request, $jobCompanies));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
