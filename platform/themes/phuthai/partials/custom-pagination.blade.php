@if ($paginator->hasPages())
    @if (!$paginator->onFirstPage())
        <li>
            <a href="{{ $paginator->previousPageUrl() }}" tabindex="-1">
                <i class="fal fa-chevron-double-left" aria-hidden="true"></i>
            </a>
        </li>
    @endif
    @foreach ($elements as $element)
        @if (is_string($element))
            <li>
                {{ $element }}
            </li>
        @endif
        @if (is_array($element))
            @foreach ($element as $page => $url)
                @if ($page == $paginator->currentPage())
                    <li><span>{{ $page }}</span></li>
                @else
                    <li><a href="{{ $url }}">{{ $page }}</a></li>
                @endif
            @endforeach
        @endif
    @endforeach

    @if ($paginator->hasMorePages())
        <li>
            <a href="{{ $paginator->nextPageUrl() }}">
                <i class="fal fa-chevron-double-right" aria-hidden="true"></i>
            </a>
        </li>
    @endif

@endif

