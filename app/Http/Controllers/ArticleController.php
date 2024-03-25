<?php

namespace App\Http\Controllers;

use App\Models\Article;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ArticleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $articles = Article::all();
        return view('article.index', compact('articles'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('article.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Validation
        $request->validate([
            'article_title_en' => 'required|max:100',
            'article_title_fr' => 'nullable|max:100',
            'article_content_en' => 'required|string',
            'article_content_fr' => 'nullable|string',
            'date' => 'required|date',
        ]);

        $article = [
            'article_title_en' => $request->article_title_en,
            'article_content_en' => $request->article_content_en,
        ];

        // Add title and content in english par default and if french was included, it will be inserted as well
        if($request->article_title_fr != null && $request->article_content_fr != null) {
            $article = $article
                        + ['article_title_fr' => $request->article_title_fr,
                        'article_content_fr' => $request->article_content_fr];
        };

        $newArticle = new Article();
        $newArticle->user_id = Auth::user()->id;
        $newArticle->article = $article;
        $newArticle->date = $request->date;
        $newArticle->save();

        return redirect(route('article.index'))->with(['success_fr' => 'Ajout de l\'article réussi !', 'success_en' => 'Article inserted with success !']);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function show(Article $article)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function edit(Article $article)
    {
        // If you are not the owner of the article, you won't be able to modify it
        if (Auth::user()->id == $article->user_id) {
            return view('article.edit', ['article' => $article]);
        } else {
            $articles = Article::all();
            return redirect(route('article.index'))->withErrors(['custom_error_fr' => 'Vous n\'êtes pas autorisé à modifier cet article.', 'custom_error_en' => 'You are not authorized to modify this article.']);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Article $article)
    {
        $request->validate([
            'article_title_en' => 'required|max:100',
            'article_title_fr' => 'nullable|max:100',
            'article_content_en' => 'required|string',
            'article_content_fr' => 'nullable|string',
            'date' => 'required|date',
        ]);

        $updateArticle = [
            'article_title_en' => $request->article_title_en,
            'article_content_en' => $request->article_content_en,
        ];

        if($request->article_title_fr != null && $request->article_content_fr != null) {
            $updateArticle = $updateArticle
                            + ['article_title_fr' => $request->article_title_fr,
                            'article_content_fr' => $request->article_content_fr];
        };

        $date = $request->date;

        $article->update([
            'user_id' => Auth::user()->id,
            'article' => $updateArticle,
            'date' => $date
        ]);

        $successMessage = [
            'fr' => 'Modification de l\'article réussi !',
            'en' => 'Article updated successfully!'
        ];

        return redirect(route('article.index'))->with(['success_fr' => 'Modification de l\'article réussi !', 'success_en' => 'Article updated with success !']);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function destroy(Article $article)
    {
        // If you are not the owner of the article, you won't be able to delete it
        if (Auth::user()->id == $article->user_id) {
            $article->delete();
            return redirect()->route('article.index')->with(['success_fr' => 'Suppression de l\'article réussi !', 'success_en' => 'Article deleted with success !']);
        } else {
            return redirect(route('article.index'));
        }
    }
}
