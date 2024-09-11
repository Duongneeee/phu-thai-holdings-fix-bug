<?php

namespace Botble\Companies\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Companies\Http\Requests\BusinessCategoriesRequest;
use Botble\Companies\Repositories\Interfaces\BusinessCategoriesInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Companies\Tables\BusinessCategoriesTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Companies\Forms\BusinessCategoriesForm;
use Botble\Base\Forms\FormBuilder;

class BusinessCategoriesController extends BaseController
{
    /**
     * @var BusinessCategoriesInterface
     */
    protected $businessCategoriesRepository;

    /**
     * @param BusinessCategoriesInterface $businessCategoriesRepository
     */
    public function __construct(BusinessCategoriesInterface $businessCategoriesRepository)
    {
        $this->businessCategoriesRepository = $businessCategoriesRepository;
    }

    /**
     * @param BusinessCategoriesTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(BusinessCategoriesTable $table)
    {
        page_title()->setTitle(trans('plugins/companies::business-categories.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/companies::business-categories.create'));

        return $formBuilder->create(BusinessCategoriesForm::class)->renderForm();
    }

    /**
     * @param BusinessCategoriesRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(BusinessCategoriesRequest $request, BaseHttpResponse $response)
    {
        $idx = $request->input('idx');

        $request->merge([
            'idx'  => !empty($idx) ? $idx : $this->businessCategoriesRepository->count() + 1,
        ]);

        $businessCategories = $this->businessCategoriesRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(BUSINESS_CATEGORIES_MODULE_SCREEN_NAME, $request, $businessCategories));

        return $response
            ->setPreviousUrl(route('business-categories.index'))
            ->setNextUrl(route('business-categories.edit', $businessCategories->id))
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
        $businessCategories = $this->businessCategoriesRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $businessCategories));

        page_title()->setTitle(trans('plugins/companies::business-categories.edit') . ' "' . $businessCategories->name . '"');

        return $formBuilder->create(BusinessCategoriesForm::class, ['model' => $businessCategories])->renderForm();
    }

    /**
     * @param int $id
     * @param BusinessCategoriesRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, BusinessCategoriesRequest $request, BaseHttpResponse $response)
    {
        $businessCategories = $this->businessCategoriesRepository->findOrFail($id);

        $businessCategories->fill($request->input());

        $businessCategories = $this->businessCategoriesRepository->createOrUpdate($businessCategories);

        event(new UpdatedContentEvent(BUSINESS_CATEGORIES_MODULE_SCREEN_NAME, $request, $businessCategories));

        return $response
            ->setPreviousUrl(route('business-categories.index'))
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
            $businessCategories = $this->businessCategoriesRepository->findOrFail($id);

            $this->businessCategoriesRepository->delete($businessCategories);

            event(new DeletedContentEvent(BUSINESS_CATEGORIES_MODULE_SCREEN_NAME, $request, $businessCategories));

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
            $businessCategories = $this->businessCategoriesRepository->findOrFail($id);
            $this->businessCategoriesRepository->delete($businessCategories);
            event(new DeletedContentEvent(BUSINESS_CATEGORIES_MODULE_SCREEN_NAME, $request, $businessCategories));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
