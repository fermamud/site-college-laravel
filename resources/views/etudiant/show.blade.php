@extends('layouts.app')
@section('title', __('Details of a student'))
@section('content')
<h1 class="my-5 text-center">@lang('Details of a student')</h1>
    <div class="row justify-content-center">
        <div class="col-md-4">
            <div class="card mb-4">
                <div class="card-header">
                    <h5 class="card-title">{{ $etudiant->user->nom }}</h5>
                </div>
                <div class="card-body">
                    <ul clas="list-unstyled">
                        <li><strong>@lang('Adress') :</strong> {{ $etudiant->adresse }}</li>
                        <li><strong>@lang('Email') :</strong> {{ $etudiant->user->email }}</li>
                        <li><strong>@lang('Birth Date') :</strong> {{ $etudiant->date_naissance }}</li>
                        <li><strong>@lang('City') :</strong> {{$etudiant->ville->nom }}</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
@endsection



