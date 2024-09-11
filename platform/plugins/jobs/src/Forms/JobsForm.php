<?php

namespace Botble\Jobs\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Jobs\Http\Requests\JobsRequest;
use Botble\Jobs\Models\Jobs;

class JobsForm extends FormAbstract
{

    /**
     * {@inheritDoc}
     */
    public function buildForm()
    {
        $jobFields = getJobFields()->pluck('name', 'id')->toArray();
        $jobCompanies = getJobCompanies()->pluck('name', 'id')->toArray();
        $jobLocations = getJobLocations()->pluck('name', 'id')->toArray();
        $this
            ->setupModel(new Jobs)
            ->setValidatorClass(JobsRequest::class)
            ->withCustomFields()
            ->add('name', 'text', [
                'label'      => trans('core/base::forms.name'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => trans('core/base::forms.name_placeholder'),
                ],
            ])
            ->add('description', 'textarea', [
                'label'      => "Mô tả ngắn",
                'label_attr' => ['class' => 'control-label'],
                'attr'       => [
                    'rows'  => 3,
                ],
            ])
            ->add('rowOpen1', 'html', [
                'html' => '<div class="row">',
            ])
            ->add('job_company_id', 'customSelect', [
                'label'      => "Công ty",
                'attr'       => [
                    'class' => 'form-control select-full ',
                ],
                'label_attr' => ['class' => 'control-label required'],
                'choices'    => $jobCompanies,
                'wrapper'    => [
                    'class' => 'form-group col-md-4',
                ],
            ])
            ->add('job_field_id', 'customSelect', [
                'label'      => "Ngành nghề",
                'attr'       => [
                    'class' => 'form-control select-full ',
                ],
                'label_attr' => ['class' => 'control-label required'],
                'choices'    => $jobFields,
                'wrapper'    => [
                    'class' => 'form-group col-md-4',
                ],
            ])
            ->add('job_location_id', 'customSelect', [
                'label'      => "Vị trí",
                'attr'       => [
                    'class' => 'form-control select-full ',
                ],
                'label_attr' => ['class' => 'control-label required'],
                'choices'    => $jobLocations,
                'wrapper'    => [
                    'class' => 'form-group col-md-4',
                ],
            ])
            ->add('rowClose1', 'html', [
                'html' => '</div>',
            ])

            ->add('job_desc', 'editor', [
                'label'      => "Mô tả",
                'label_attr' => ['class' => 'control-label required'],
            ])

            ->add('job_requirements', 'editor', [
                'label'      => "Yêu cầu",
                'label_attr' => ['class' => 'control-label'],
            ])
            ->add('job_benefits', 'editor', [
                'label'      => "Quyền lợi",
                'label_attr' => ['class' => 'control-label'],
            ])
            ->add('job_contact', 'repeater', [
                'label'      => "Hình thức ứng tuyển",
                'label_attr' => ['class' => 'control-label'],
                'fields' => [
                    [
                        'type'       => 'text',
                        'label'      => "Tên giá trị",
                        'label_attr' => ['class' => 'control-label'],
                        'attributes' => [
                            'name'    => 'properties_name',
                            'value'   => null,
                            'options' => [
                                'class'        => 'form-control',
                            ],
                        ],
                    ],
                    [
                        'type'       => 'text',
                        'label'      => "Giá trị",
                        'label_attr' => ['class' => 'control-label'],
                        'attributes' => [
                            'name'    => 'properties_value',
                            'value'   => null,
                            'options' => [
                                'class'        => 'form-control',
                            ],
                        ],
                    ],
                ],
                'value' => $this->model ? $this->model->job_properties : null,
            ])



            ->add('status', 'customSelect', [
                'label'      => trans('core/base::tables.status'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'class' => 'form-control select-full',
                ],
                'choices'    => BaseStatusEnum::labels(),
            ])
            ->add('job_deadline', 'text', [
                'label'         => "Hạn nộp",
                'label_attr'    => ['class' => 'control-label required'],
                'attr'          => [
                    'class'            => 'form-control datepicker',
                    'data-date-format' => 'dd/mm/yyyy',
                ],
                'value' => function($jobDeadline){
                    return !empty($jobDeadline) ? $jobDeadline->format('d/m/Y') : null;
                },
                'default_value' => now()->format('d/m/Y'),
            ])

            ->setBreakFieldPoint('status');
    }
}
