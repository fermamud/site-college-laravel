@extends('layouts.app')
@section('title', __('Details of a student'))
@section('content')
<h1 class="my-5 text-center">@lang('Details of a student')</h1>
    <div class="row justify-content-center">
        <div class="col-md-4">
            <div class="card mb-4">
                <div class="card-header">
                    <h5 class="card-title">{{ $etudiant->nom }}</h5>
                </div>
                <div class="card-body">
                    <p class="card-text">{{ $etudiant->adresse }}</p>
                    <ul clas="list-unstyled">
                        <li><strong>@lang('Email') :</strong> {{ $etudiant->email }}</li>
                        <li><strong>('Birth Date') :</strong> {{ $etudiant->date_naissance }}</li>
                        <li><strong>@lang('City') id :</strong> {{ $etudiant->ville_id }}</li>
                        <li><strong>@lang('City') :</strong> {{$etudiant->ville->nom }}</li>
                    </ul>
                </div>
            </div>
            <a href="{{ route('user.create', $etudiant->id) }}" class="btn btn-sm btn-outline-primary">Registration</a>
            <a href="" class="btn btn-sm btn-outline-primary">Connexion</a>
        </div>
    </div>
@endsection



