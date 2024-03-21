@extends('layouts.app')
@section('title', __('Add document'))
@section('content')
@if(!$errors->isEmpty())
      <div class="alert alert-danger alert-dismissible fade show" role="alert">
          <ul>
              @foreach($errors->all() as $error)
              <li>{{ $error }}</li>
              @endforeach
          </ul>     
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>                
  @endif
<h1 class="my-5 text-center">@lang('Add document')</h1>
<form class="row g-3 m-5 justify-content-center" method="POST" enctype="multipart/form-data">
    @csrf
    <div class="col-5">
      <label for="user_id" class="form-label">@lang('User') id</label>
      <input type="number" name="user_id" class="form-control" id="user_id" value="{{ $user_id}}">
    </div>    
    <div class="col-5">
      <label for="en" class="form-label">@lang('Name of document in english')</label>
      <input type="text" name="en" class="form-control" id="en" value="{{ old('en') }}">
    </div>
    <div class="col-5">
      <label for="fr" class="form-label">@lang('Name of document in french')</label>
      <input type="text" name="fr" class="form-control" id="fr" value="{{ old('fr') }}">
    </div>
    <div class="col-5">
      <label for="date" class="form-label">@lang('Date')</label>
      <input type="date" name="date" class="form-control" id="date" value="{{ old('date') }}">
      @if($errors->has('date'))
        <div class="text-danger mt-2">
            {{ $errors->first('date') }}
        </div>
      @endif
    </div>
    <div class="col-5">
      <label for="document" class="form-label">Document</label>
      <input type="file" name="document" class="form-control" id="document">
      @if($errors->has('document'))
        <div class="text-danger mt-2">
            {{ $errors->first('document') }}
        </div>
      @endif
    </div>
    <div class="col-10">
        <button type="submit" class="btn btn-primary">@lang('Add')</button>
    </div>
</form>
@endsection