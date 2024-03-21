@extends('layouts.app')
@section('title', __('Add student'))
@section('content')
<h1 class="my-5 text-center">@lang('Add student')</h1>
<form class="row g-3 m-5 justify-content-center" method="POST">
    @csrf
    <div class="col-5">
      <label for="nom" class="form-label">@lang('Name')</label>
      <input type="text" name="nom" class="form-control" id="nom" placeholder="Marie Tremblay" value="{{ old('nom') }}">
      @if($errors->has('nom'))
        <div class="text-danger mt-2">
            {{ $errors->first('nom') }}
        </div>
      @endif
    </div>
    <div class="col-5">
      <label for="adresse" class="form-label">@lang('Adress')</label>
      <input type="text" name="adresse" class="form-control" id="adresse" placeholder="1117 Avenue Mont Royal" value="{{ old('adresse') }}">
      @if($errors->has('adresse'))
        <div class="text-danger mt-2">
            {{ $errors->first('adresse') }}
        </div>
      @endif
    </div>
    <div class="col-5">
      <label for="telephone" class="form-label">@lang('Telephone')</label>
      <input type="tel" name="telephone" class="form-control" id="telephone" placeholder="514-608-1738" value="{{ old('telephone') }}">
      @if($errors->has('telephone'))
        <div class="text-danger mt-2">
            {{ $errors->first('telephone') }}
        </div>
      @endif
    </div>
  <div class="col-5">
    <label for="email" class="form-label">@lang('Email')</label>
    <input type="email" name="email" class="form-control" id="email" placeholder="marie@gmail.com">
    @if($errors->has('email'))
      <div class="text-danger mt-2">
          {{ $errors->first('email') }}
      </div>
    @endif
  </div>
  <div class="col-5">
    <label for="password" class="form-label">Password</label>
    <input type="password" name="password" class="form-control" id="password">
    @if($errors->has('password'))
      <div class="text-danger mt-2">
          {{ $errors->first('password') }}
      </div>
    @endif
  </div>
  <div class="col-5">
    <label for="date_naissance" class="form-label">@lang('Birth Date')</label>
    <input type="date" name="date_naissance" class="form-control" id="date_naissance" value="{{ old('date_naissance') }}">
    @if($errors->has('date_naissance'))
      <div class="text-danger mt-2">
          {{ $errors->first('date_naissance') }}
      </div>
    @endif
  </div>
  <div class="col-5">
    <label for="ville_nom" class="form-label">@lang('City')</label>
    <select name="ville_id" id="ville_nom" class="form-control">
        <option value="0">Sélectionnez une ville</option>
        @foreach($villes as $ville)
        <option value="{{ $ville->id }}" {{ old('ville_id') == $ville->id ? 'selected' : '' }}>{{ $ville->nom }}</option>
        @endforeach
    </select>
    @if($errors->has('ville_id'))
      <div class="text-danger mt-2">
        {{ $errors->first('ville_id') }}
      </div>
    @endif
  </div>
  <div class="col-10">
    <button type="submit" class="btn btn-primary">@lang('Add')</button>
  </div>
</form>
@endsection