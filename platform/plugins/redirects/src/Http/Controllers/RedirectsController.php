<?php

namespace Botble\Redirects\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Redirects\Http\Requests\RedirectsRequest;
use Botble\Redirects\Repositories\Interfaces\RedirectsInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Redirects\Tables\RedirectsTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Redirects\Forms\RedirectsForm;
use Botble\Base\Forms\FormBuilder;

class RedirectsController extends BaseController
{
    /**
     * @var RedirectsInterface
     */
    protected $redirectsRepository;

    /**
     * @param RedirectsInterface $redirectsRepository
     */
    public function __construct(RedirectsInterface $redirectsRepository)
    {
        $this->redirectsRepository = $redirectsRepository;
    }

    /**
     * @param RedirectsTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(RedirectsTable $table)
    {
        page_title()->setTitle(trans('plugins/redirects::redirects.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/redirects::redirects.create'));

        return $formBuilder->create(RedirectsForm::class)->renderForm();
    }

    /**
     * @param RedirectsRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(RedirectsRequest $request, BaseHttpResponse $response)
    {
        $redirects = $this->redirectsRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(REDIRECTS_MODULE_SCREEN_NAME, $request, $redirects));

        return $response
            ->setPreviousUrl(route('redirects.index'))
            ->setNextUrl(route('redirects.edit', $redirects->id))
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
        $redirects = $this->redirectsRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $redirects));

        page_title()->setTitle(trans('plugins/redirects::redirects.edit') . ' "' . $redirects->name . '"');

        return $formBuilder->create(RedirectsForm::class, ['model' => $redirects])->renderForm();
    }

    /**
     * @param int $id
     * @param RedirectsRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, RedirectsRequest $request, BaseHttpResponse $response)
    {
        $redirects = $this->redirectsRepository->findOrFail($id);

        $redirects->fill($request->input());

        $redirects = $this->redirectsRepository->createOrUpdate($redirects);

        event(new UpdatedContentEvent(REDIRECTS_MODULE_SCREEN_NAME, $request, $redirects));

        return $response
            ->setPreviousUrl(route('redirects.index'))
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
            $redirects = $this->redirectsRepository->findOrFail($id);

            $this->redirectsRepository->delete($redirects);

            event(new DeletedContentEvent(REDIRECTS_MODULE_SCREEN_NAME, $request, $redirects));

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
            $redirects = $this->redirectsRepository->findOrFail($id);
            $this->redirectsRepository->delete($redirects);
            event(new DeletedContentEvent(REDIRECTS_MODULE_SCREEN_NAME, $request, $redirects));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
