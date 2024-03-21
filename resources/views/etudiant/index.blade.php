@extends('layouts.app')
@section('title', 'Liste des étudiants')
@section('content')
<h1 class="m-5">Liste des Étudiants</h1>
    <div class="table-responsive{-sm|-md|-lg|-xl} m-3">
        <table class="table caption-top">
            <thead>
                <tr>
                <th scope="col">@lang('Name')</th>
                <th scope="col" class="adresse">@lang('Adress')</th>
                <th scope="col" class="telephone">@lang('Telephone')</th>
                <th scope="col">@lang('Email')</th>
                <th scope="col">@lang('Birth Date')</th>
                <th scope="col">@lang('City')</th>
                <th scope="col">@lang('Details')</th>
                <th scope="col">@lang('Modification')</th>
                <th scope="col">@lang('Delete')</th>
                </tr>
            </thead>
            <tbody>
            @forelse($etudiants as $etudiant)
                <tr>
                    <th>{{ $etudiant->user->nom }}</th>
                    <td class="adresse">{{ $etudiant->adresse }}</td>
                    <td class="telephone">{{ $etudiant->telephone }}</td>
                    <td>{{ $etudiant->user->email }}</td>
                    <td>{{ $etudiant->date_naissance }}</td>
                    <td>{{ $etudiant->ville->nom }}</td>
                    <td><a href="{{ route('etudiant.show', $etudiant->id) }}" class="btn btn-sm btn-outline-primary">@lang('View')</a></td>
                    <td><a href="{{ route('etudiant.edit', $etudiant->id) }}" class="btn btn-sm btn-outline-primary">@lang('Modification')</a></td>
                    <td>
                        <form action="{{ route('etudiant.delete', $etudiant->id) }}" method="post">
                            @csrf
                            @method('delete')
                            <button type="submit" class="btn btn-sm btn-danger">@lang('Delete')</button>
                        </form>
                    </td>
                </tr>
            @empty
                <tr>
                    <td colspan="9">
                        <div class="alert alert-danger">@lang('text_message_no_students')</div>
                    </td>
                </tr>
            @endforelse
            </tbody>
        </table>
        {{ $etudiants }}
    </div>
@endsection