<?php

namespace Botble\Jobs\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Jobs\Http\Requests\JobApplyRequest;
use Botble\Jobs\Models\JobApply;
use Botble\Contact\Enums\ContactStatusEnum;

class JobApplyForm extends FormAbstract
{

    /**
     * {@inheritDoc}
     */
    public function buildForm()
    {
        $this
            ->setupModel(new JobApply)
            ->setValidatorClass(JobApplyRequest::class)
            ->withCustomFields()
            ->add('status', 'customSelect', [
                'label'      => trans('core/base::tables.status'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'class' => 'form-control select-full',
                ],
                'choices'    => ContactStatusEnum::labels(),
            ])
            ->setBreakFieldPoint('status')
            ->addMetaBoxes([
                'information' => [
                    'title'      => "Thông tin ứng viên",
                    'content'    => view('plugins/jobs::apply_job', ['contact' => $this->getModel()])->render(),
                    'attributes' => [
                        'style' => 'margin-top: 0',
                    ],
                ],
            ]);
    }
}
