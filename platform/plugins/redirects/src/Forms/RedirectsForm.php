<?php

namespace Botble\Redirects\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Redirects\Http\Requests\RedirectsRequest;
use Botble\Redirects\Models\Redirects;

class RedirectsForm extends FormAbstract
{

    /**
     * {@inheritDoc}
     */
    public function buildForm()
    {
        $this
            ->setupModel(new Redirects)
            ->setValidatorClass(RedirectsRequest::class)
            ->withCustomFields()
            ->add('old_url', 'text', [
                'label'      => "Liên kết cũ",
                'label_attr' => ['class' => 'control-label required'],
            ])
            ->add('new_url', 'text', [
                'label'      => "Liên kết mới",
                'label_attr' => ['class' => 'control-label required'],
            ])
            ->add('status', 'customSelect', [
                'label'      => trans('core/base::tables.status'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'class' => 'form-control select-full',
                ],
                'choices'    => BaseStatusEnum::labels(),
            ])
            ->setBreakFieldPoint('status');
    }
}
