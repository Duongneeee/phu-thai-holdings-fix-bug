<?php

namespace Botble\Companies\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Companies\Http\Requests\CompaniesRequest;
use Botble\Companies\Repositories\Interfaces\CompaniesInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Companies\Tables\CompaniesTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Companies\Forms\CompaniesForm;
use Botble\Base\Forms\FormBuilder;

class CompaniesController extends BaseController
{
    /**
     * @var CompaniesInterface
     */
    protected $companiesRepository;

    /**
     * @param CompaniesInterface $companiesRepository
     */
    public function __construct(CompaniesInterface $companiesRepository)
    {
        $this->companiesRepository = $companiesRepository;
    }

    /**
     * @param CompaniesTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(CompaniesTable $table)
    {
        page_title()->setTitle(trans('plugins/companies::companies.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/companies::companies.create'));

        return $formBuilder->create(CompaniesForm::class)->renderForm();
    }

    /**
     * @param CompaniesRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(CompaniesRequest $request, BaseHttpResponse $response)
    {
        $companies = $this->companiesRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(COMPANIES_MODULE_SCREEN_NAME, $request, $companies));

        return $response
            ->setPreviousUrl(route('companies.index'))
            ->setNextUrl(route('companies.edit', $companies->id))
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
        $companies = $this->companiesRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $companies));

        page_title()->setTitle(trans('plugins/companies::companies.edit') . ' "' . $companies->name . '"');

        return $formBuilder->create(CompaniesForm::class, ['model' => $companies])->renderForm();
    }

    /**
     * @param int $id
     * @param CompaniesRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, CompaniesRequest $request, BaseHttpResponse $response)
    {
        $companies = $this->companiesRepository->findOrFail($id);

        $companies->fill($request->input());

        $companies = $this->companiesRepository->createOrUpdate($companies);

        event(new UpdatedContentEvent(COMPANIES_MODULE_SCREEN_NAME, $request, $companies));

        return $response
            ->setPreviousUrl(route('companies.index'))
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
            $companies = $this->companiesRepository->findOrFail($id);

            $this->companiesRepository->delete($companies);

            event(new DeletedContentEvent(COMPANIES_MODULE_SCREEN_NAME, $request, $companies));

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
            $companies = $this->companiesRepository->findOrFail($id);
            $this->companiesRepository->delete($companies);
            event(new DeletedContentEvent(COMPANIES_MODULE_SCREEN_NAME, $request, $companies));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
