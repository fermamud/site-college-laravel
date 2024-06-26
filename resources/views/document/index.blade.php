@extends('layouts.app')
@section('title', __('Liste des Documents'))
@section('content')
@php
    $locale = session('locale');
    $error = $errors->first('custom_error_' . ($locale ?? 'en'));
@endphp
@if($error)
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        {{ $error }}
    </div>
@endif
@if(app()->getLocale() == 'fr' && session()->has('success_fr'))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        {{ session('success_fr') }}
    </div>
@elseif(app()->getLocale() == 'en' && session()->has('success_en'))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        {{ session('success_en') }}
    </div>
@endif
<h1 class="m-5">@lang('Liste des Documents')</h1>
<div class="table-responsive{-sm|-md|-lg|-xl} m-5">
    <table class="table caption-top">
        <thead>
            <tr>
                <th scope="col">@lang('Name')</th>
                <th scope="col">@lang('User')</th>
                <th scope="col">@lang('Date')</th>
                <th scope="col">@lang('Download')</th>
                <th scope="col">@lang('Modification')</th>
                <th scope="col">@lang('Delete')</th>
            </tr>
        </thead>
        <tbody>
        @forelse($documents as $document)
            <tr>
            @php
            $locale = session('locale');
            $documentTitle = $document->nom[$locale ?? 'en'] ?? 'Le système ne possédait que ce document en anglais. ' . $document->nom['en'];
            @endphp
            @if($documentTitle !== null)
            <tr>
                <td>{{ $documentTitle }}</td>
                <td>{{ $document->user->nom }}</td>
                <td>{{ $document->date }}</td>
                <td>
                    <a href="{{ route('document.download', $document->document) }}">
                    {{ $document->document }}
                    </a>
                </td>
                @if(Auth::user()->id == $document->user_id)
                    <td><a href="{{ route('document.edit', $document->id) }}" class="btn btn-sm btn-outline-primary">@lang('Modification')</a></td>
                    <td>
                        <form action="{{ route('document.delete', $document->id) }}" method="post">
                            @csrf
                            @method('delete')
                            <button type="submit" class="btn btn-sm btn-outline-danger">
                                @lang('Delete')
                            </button>
                        </form>
                    </td>
                @else
                    <td>Non autorisé</td>
                    <td>Non autorisé</td>
                @endif
            </tr>
            @endif
            @empty
                <tr>
                    <td colspan="9">
                        <div class="alert alert-danger">Il n'y a aucun document dans la liste !</div>
                    </td>
                </tr>
            @endforelse
        </tbody>
    </table>
    {{ $documents }}
</div>
<div class="d-grid gap-2 d-md-block mt-0 m-5">
    <a href="{{ route('document.create') }}" class="btn btn-secondary">Télécharger un document</a>
</div>
@endsection