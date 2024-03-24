@extends('layouts.app')
@section('title', __('Modify Article'))
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
<h1 class="my-5 text-center">@lang('Modify Article')</h1>
<form class="row g-3 m-5 justify-content-center" method="POST">
  @csrf
  @method('put')
    <div class="col-5">
      <label for="article_title_en" class="form-label">@lang('Title in English')</label>
      <input type="text" name="article_title_en" class="form-control" id="article_title_en" value="{{ old('article_title_en', $article->article['article_title_en']) }}">
    </div>
    <div class="col-5">
      <label for="article_title_fr" class="form-label">@lang('Title in French')</label>
      <input type="text" name="article_title_fr" class="form-control" id="article_title_fr" value="$article->article['article_title_fr']) ? $article->article['article_title_fr']) : '' }}">
    </div>
    <div class="col-5">
      <label for="article_content_en" class="form-label">@lang('Article in English')</label>
      <input type="text" name="article_content_en" class="form-control" id="article_content_en" value="{{ old('article_content_en', $article->article['article_content_en']) }}">
    </div>
    <div class="col-5">
      <label for="article_content_fr" class="form-label">@lang('Article in French')</label>
      <input type="text" name="article_content_fr" class="form-control" id="article_content_fr" value="{{ old('article_content_fr', $article->article['article_content_fr']) }}">
    </div>
    <div class="col-5">
      <label for="date" class="form-label">@lang('Date')</label>
      <input type="date" name="date" class="form-control" id="date" value="{{ old('date', $article->date) }}">
    </div>
    <div class="col-10">
    <button type="submit" class="btn btn-primary">@lang('Update')</button>
    </div>
</form>
@endsection