@extends('core/acl::auth.master')

@section('content')
    <p>Đăng nhập bằng OTP:</p>

    {!! Form::open(['route' => 'access.login.sso', 'class' => 'login-form']) !!}
    <div class="form-group mb-3" id="emailGroup">
        <label>OTP</label>
        {!! Form::text('otp', request()->input('otp', old('otp')), ['class' => 'form-control', 'placeholder' => "OTP"]) !!}
    </div>

    <br>

    <button type="submit" class="btn btn-block login-button">
        <span class="signin">{{ trans('core/acl::auth.login.login') }}</span>
    </button>
    <div class="clearfix"></div>

    <br>
    <p><a class="lost-pass-link" href="{{ route('access.login') }}">Quay lại đăng nhập</a></p>

    {!! Form::close() !!}
@stop
