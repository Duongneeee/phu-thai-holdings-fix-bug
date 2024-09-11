@foreach($posts as $item)
    <div class="col-md-4">
        <div class="ns_item ">
            <a href="{{ $item->url }}" title="{{ $item->name }}" class="zoom-img zoom">
                <span>
                    <img src="{{ get_image_url($item->image) }}" alt="{{ $item->name }}">
                </span>
            </a>
            <p class="mg-15">
                <a href="{{ $item->first_category->url }}" title="" class="font-14 font-600 text_red text-uppercase">
                    {{ $item->first_category->name }}
                </a>
            </p>
            <h4>
                <a href="{{ $item->url }}" title="{{ $item->name }}" class="font-weight-bold text-uppercase line-15">
                    {{ $item->name }}
                </a>
            </h4>
            <div class="desc font-14 font-weight-light">
                {{ $item->description }}
            </div>
            <div class="flex-center">
                <span class="font-weight-light">
                    {{ $item->created_at->format('d/m/Y') }}
                </span>
                <div class="gr_line">
                    <a href="{{ $item->url }}" title="" class="xt">{{ __("view_more") }}</a>
                </div>
            </div>
        </div>
    </div>
@endforeach
