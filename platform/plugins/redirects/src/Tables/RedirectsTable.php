<?php

namespace Botble\Redirects\Tables;

use Illuminate\Support\Facades\Auth;
use BaseHelper;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Redirects\Repositories\Interfaces\RedirectsInterface;
use Botble\Table\Abstracts\TableAbstract;
use Illuminate\Contracts\Routing\UrlGenerator;
use Yajra\DataTables\DataTables;
use Html;

class RedirectsTable extends TableAbstract
{

    /**
     * @var bool
     */
    protected $hasActions = true;

    /**
     * @var bool
     */
    protected $hasFilter = true;

    /**
     * RedirectsTable constructor.
     * @param DataTables $table
     * @param UrlGenerator $urlGenerator
     * @param RedirectsInterface $redirectsRepository
     */
    public function __construct(DataTables $table, UrlGenerator $urlGenerator, RedirectsInterface $redirectsRepository)
    {
        parent::__construct($table, $urlGenerator);

        $this->repository = $redirectsRepository;

        if (!Auth::user()->hasAnyPermission(['redirects.edit', 'redirects.destroy'])) {
            $this->hasOperations = false;
            $this->hasActions = false;
        }
    }

    /**
     * {@inheritDoc}
     */
    public function ajax()
    {
        $data = $this->table
            ->eloquent($this->query())
            ->editColumn('old_url', function ($item) {
                if (!Auth::user()->hasPermission('redirects.edit')) {
                    return $item->name;
                }


                return Html::link(route('redirects.edit', $item->id), $item->old_url);
            })
            ->editColumn('new_url', function ($item) {
                if (!Auth::user()->hasPermission('redirects.edit')) {
                    return $item->name;
                }
                return Html::link(route('redirects.edit', $item->id), $item->new_url);
            })
            ->editColumn('checkbox', function ($item) {
                return $this->getCheckbox($item->id);
            })
            ->editColumn('created_at', function ($item) {
                return BaseHelper::formatDate($item->created_at);
            })
            ->editColumn('status', function ($item) {
                return $item->status->toHtml();
            })
            ->addColumn('operations', function ($item) {
                return $this->getOperations('redirects.edit', 'redirects.destroy', $item);
            });

        return $this->toJson($data);
    }

    /**
     * {@inheritDoc}
     */
    public function query()
    {
        $query = $this->repository->getModel()
            ->select(['*']);

        return $this->applyScopes($query);
    }

    /**
     * {@inheritDoc}
     */
    public function columns()
    {
        return [
            'id' => [
                'title' => trans('core/base::tables.id'),
                'width' => '20px',
            ],
            'old_url' => [
                'title' => "Liên kết cũ",
                'class' => 'text-start',
            ],
            'new_url' => [
                'title' => "Liên kết mới",
                'class' => 'text-start',
            ],
            'created_at' => [
                'title' => trans('core/base::tables.created_at'),
                'width' => '100px',
            ],
            'status' => [
                'title' => trans('core/base::tables.status'),
                'width' => '100px',
            ],
        ];
    }

    /**
     * {@inheritDoc}
     */
    public function buttons()
    {
        return $this->addCreateButton(route('redirects.create'), 'redirects.create');
    }

    /**
     * {@inheritDoc}
     */
    public function bulkActions(): array
    {
        return $this->addDeleteAction(route('redirects.deletes'), 'redirects.destroy', parent::bulkActions());
    }

    /**
     * {@inheritDoc}
     */
    public function getBulkChanges(): array
    {
        return [
            'old_url' => [
                'title'    => "Liên kết cũ",
                'type'     => 'text',
                'validate' => 'required|url',
            ],
            'new_url' => [
                'title'    => "Liên kết mới",
                'type'     => 'text',
                'validate' => 'required|url',
            ],
            'status' => [
                'title'    => trans('core/base::tables.status'),
                'type'     => 'select',
                'choices'  => BaseStatusEnum::labels(),
                'validate' => 'required|in:' . implode(',', BaseStatusEnum::values()),
            ],
            'created_at' => [
                'title' => trans('core/base::tables.created_at'),
                'type'  => 'date',
            ],
        ];
    }

    /**
     * @return array
     */
    public function getFilters(): array
    {
        return $this->getBulkChanges();
    }
}
