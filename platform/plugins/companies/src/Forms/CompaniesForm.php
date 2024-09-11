<?php

namespace Botble\Companies\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Companies\Http\Requests\CompaniesRequest;
use Botble\Companies\Models\Companies;

class CompaniesForm extends FormAbstract
{

    /**
     * {@inheritDoc}
     */
    public function buildForm()
    {
        $businessCategories = getBusinessCategories()->pluck('name', 'id')->toArray();

        $this
            ->setupModel(new Companies)
            ->setValidatorClass(CompaniesRequest::class)
            ->withCustomFields()
            ->add('name', 'text', [
                'label'      => trans('core/base::forms.name'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => trans('core/base::forms.name_placeholder'),
                ],
            ])
            ->add('business_category_id', 'customSelect', [
                'label'      => "Lĩnh vực",
                'attr'       => [
                    'class' => 'form-control select-full ',
                ],
                'label_attr' => ['class' => 'control-label required'],
                'choices'    => $businessCategories,
            ])
            ->add('description', 'textarea', [
                'label'      => "Mô tả",
                'label_attr' => ['class' => 'control-label'],
                'attr'       => [
                    'rows'  => 5,
                ],
            ])
            ->add('link', 'text', [
                'label'      => "Liên kết",
                'label_attr' => ['class' => 'control-label'],
            ])
            ->add('status', 'customSelect', [
                'label'      => trans('core/base::tables.status'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'class' => 'form-control select-full',
                ],
                'choices'    => BaseStatusEnum::labels(),
            ])
            ->add('image', 'mediaImage', [
                'label'      => "Logo",
                'label_attr' => ['class' => 'control-label'],
            ])
            ->add('idx', 'number', [
                'label'      => "Số thứ tự",
                'label_attr' => ['class' => 'control-label'],
            ])
            ->setBreakFieldPoint('status');
    }
}
