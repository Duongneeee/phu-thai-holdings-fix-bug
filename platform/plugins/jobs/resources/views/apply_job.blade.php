@if ($contact)
    <p>{{ trans('plugins/contact::contact.tables.time') }}: <i>{{ $contact->created_at }}</i></p>
    <p>{{ trans('plugins/contact::contact.tables.full_name') }}: <i>{{ $contact->name }}</i></p>
    <p>{{ trans('plugins/contact::contact.tables.email') }}: <i><a href="mailto:{{ $contact->email }}">{{ $contact->email }}</a></i></p>
    <p>{{ trans('plugins/contact::contact.tables.phone') }}: <i>@if ($contact->phone) <a href="tel:{{ $contact->phone }}">{{ $contact->phone }}</a> @else N/A @endif</i></p>
    <p>Công việc ứng tuyển:
        @if(!empty($contact->job))
            <a href="{{ $contact->job->url }}" target="_blank"><i>{{ $contact->job->name }}</i>
            </a>
        @endif
    </p>
@endif

