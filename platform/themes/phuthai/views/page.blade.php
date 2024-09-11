@php
    $page->loadMissing('metadata');

    Theme::set('page', $page);
@endphp
{!! apply_filters(PAGE_FILTER_FRONT_PAGE_CONTENT, clean($page->content), $page) !!}
