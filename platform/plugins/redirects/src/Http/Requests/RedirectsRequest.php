<?php

namespace Botble\Redirects\Http\Requests;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Support\Http\Requests\Request;
use Illuminate\Validation\Rule;

class RedirectsRequest extends Request
{

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'old_url' => 'required|url|different:new_url',
            'new_url' => 'required|url',
            'status'  => Rule::in(BaseStatusEnum::values()),
        ];
    }
}
