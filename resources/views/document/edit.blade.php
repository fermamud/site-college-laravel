@extends('layouts.app')
@section('title', __('Modify document'))
@section('content')
<h1 class="my-5 text-center">@lang('Modify document')</h1>
<form class="row g-3 m-5 justify-content-center" method="POST" enctype="multipart/form-data">
    @csrf
    @method('put')
    <div class="col-5">
      <label for="user_id" class="form-label">@lang('User') id</label>
      <input type="number" name="user_id" class="form-control" id="user_id" value="{{ old('user_id', $document->user_id) }}">
    </div>    
    <div class="col-5">
      <label for="en" class="form-label">@lang('Name of document in english')</label>
      <input type="text" name="en" class="form-control" id="en" value="{{ old('en', $document->nom['en']) }}">
      @if($errors->has('en'))
        <div class="text-danger mt-2">
            {{ $errors->first('en') }}
        </div>
      @endif
    </div>
    <div class="col-5">@lang('Name of document in french')</label>
      <input type="text" name="fr" class="form-control" id="fr" value="{{ $document->nom['fr'] ?? '' }}">
      @if($errors->has('fr'))
        <div class="text-danger mt-2">
            {{ $errors->first('fr') }}
        </div>
      @endif
    </div>
    <div class="col-5">
      <label for="date" class="form-label">@lang('Date')</label>
      <input type="date" name="date" class="form-control" id="date" value="{{ old('date', $document->date) }}">
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
        <button type="submit" class="btn btn-primary">@lang('Update')</button>
    </div>
</form>
@endsection