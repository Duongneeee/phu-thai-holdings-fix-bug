@extends('core/base::layouts.master')

@section('content')
    <div class="card">
        <div class="card-body">
            <div class="wordpress-importer">
                <h1 class="page-title">Sso login</h1>

                <form method="POST" action="{{ route('post.sso-setting') }}">
                    @csrf
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group mb-3">
                                <label for="" class="control-label required">Endpoint</label>
                                <input type="text" class="form-control" name="sso_login_endpoint" value="{{ setting('sso_login_endpoint', 'https://services.nvtrongmedia.com/') }}">
                            </div>
                            <div class="form-group mb-3">
                                <label for="" class="control-label required">Token</label>
                                <input type="text" class="form-control" name="sso_login_token" value="{{ setting('sso_login_token') }}">
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@stop