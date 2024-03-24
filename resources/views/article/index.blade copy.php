@extends('layouts.app')
@section('title', __('Forum'))
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
<h1 class="my-2 m-5">@lang('Articles')</h1>
<div class="row">
    @forelse($articles as $article)
    <div class="col-md-5 m-3">
        <div class="card mb-4">
            <div class="card-header"><h5 class="card-title">Id @lang('article') : {{ $article->id }}</h5></div>
            <div class="card-header"><h5 class="card-title">@lang('User') id : {{ $article->user_id }}</h5></div>
            <div class="card-header"><h5 class="card-title">@lang('User') Name : {{ $article->user->nom }}</h5></div>
            <div class="card-body">
            @php
                $locale = session('locale');
                $default = 'en';
                $articleTitle = $article->article['article_title_' . ($locale ?? 'en')] ?? 'Le système ne possédait que cet titre en anglais.';
                $articleContent = $article->article['article_content_' . ($locale ?? 'en')] ?? 'Le système ne possédait que cet article en anglais';
            @endphp
            <p class="card-text">{{ $articleTitle }}</p>
            <p class="card-text">{{ $articleContent }}</p>
            <p class="card-text">Date : {{ $article->date }}</p>
            </div>
            @auth
                @if(Auth::user()->id == $article->user_id)
                    <div class="card-footer">
                        <div class="d-flex justify-content-end">
                            <a href="{{ route('article.edit', $article['id']) }}" class="btn btn-sm btn-outline-primary m-2">@lang('Update')</a>
                            <form action="{{ route('article.delete', $article['id']) }}" method="post">
                                @csrf
                                @method('delete')
                                <button type="submit" class="btn btn-sm btn-outline-danger m-2">
                                    @lang('Delete')
                                </button>
                            </form>
                        </div>
                    </div>
                @endif
            @endauth
        </div>
    </div>  
    @empty
    <div class="alert alert-danger">Aucun article à afficher !</div>
    @endforelse  
</div>
<div class="my-3 m-4">
    <a href="{{ route('article.create') }}" class="btn btn-secondary">@lang('Add Article')</a>
</div>
@endsection