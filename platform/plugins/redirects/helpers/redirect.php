<?php

use Botble\Redirects\Models\Redirects;

if(!function_exists('redirectUrl')){
    function redirectUrl(){
        $currentUrl = url()->full();
        $redirect = Redirects::where('old_url', $currentUrl)
            ->where('status', 'published')
            ->first();
        if(!empty($redirect)){
            return redirect($redirect->new_url,301);
        }
        return null;
    }
}
