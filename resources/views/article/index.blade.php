@extends('layouts.app')
@section('title', __('Forum'))
@section('content')
<h1 class="my-5 m-5">@lang('Articles')</h1>
<div class="row">
    @forelse($articles as $article)
    <div class="col-md-5 m-5">
        <div class="card mb-4">
            <div class="card-header"><h5 class="card-title">Id @lang('article') : {{ $article->id }}</h5></div>
            <div class="card-header"><h5 class="card-title">@lang('User') id : {{ $article->user_id }}</h5></div>
            <div class="card-body">
            @php
                $locale = session('locale');
                $articleTitle = $article->article['article_title_' . ($locale ?? 'en')] ?? 'Le système ne possédait que cet titre en anglais.';
                $articleContent = $article->article['article_content_' . ($locale ?? 'en')] ?? 'Le système ne possédait que cet article en anglais';
            @endphp
            <p class="card-text">{{ $articleTitle }}</p>
            <p class="card-text">{{ $articleContent }}</p>
            </div>
            @auth
                @if(Auth::user()->id == $article->user_id)
                    <div class="card-footer">
                        <div class="d-flex justify-content-end">
                            <a href="{{ route('article.edit', $article->id) }}" class="btn btn-sm btn-outline-primary m-2">@lang('Update')</a>
                            <form action="{{ route('article.delete', $article->id) }}" method="post">
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
    <div class="d-grid gap-2 d-md-block mt-0 m-5">
        <a href="{{ route('article.create') }}" class="btn btn-secondary">@lang('Add Article')</a>
    </div>
</div>
@endsection