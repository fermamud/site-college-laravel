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
        //return view('article.index', ['articles' => $articles]);
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
        $request->validate([
            'article_title_en' => 'required|max:100',
            'article_title_fr' => 'nullable|max:100',
            'article_content_en' => 'required|string',
            'article_content_fr' => 'nullable|string'
        ]);

        $article = [
            'article_title_en' => $request->article_title_en,
            'article_content_en' => $request->article_content_en,
        ];

        if($request->article_title_fr != null && $request->article_content_fr != null) { $article = $article + ['article_title_fr' => $request->article_title_fr, 'article_content_fr' => $request->article_content_fr];};
    
        //return $article;
        // Article::create([
        //     'user_id' => $request->user_id,
        //     'article' => $article
        // ]);

        $newArticle = new Article();
        $newArticle->user_id = Auth::user()->id;
        $newArticle->article = $article;
        $newArticle->save();

        return redirect(route('article.index'))->withSuccess('Ajout de l\'article réussi !');
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
        // return $article;
        if (Auth::user()->id == $article->user_id) {
            return view('article.edit', ['article' => $article]);
        } else {
            $articles = Article::all();
            return view('article.index', ['articles' => $articles]);
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
            'article_content_fr' => 'nullable|string'
        ]);

        $article = [
            'article_title_en' => $request->article_title_en,
            'article_content_en' => $request->article_content_en,
        ];

        if($request->article_title_fr != null && $request->article_content_fr != null) { $article = $article + ['article_title_fr' => $request->article_title_fr, 'article_content_fr' => $request->article_content_fr];};

        $newArticle = new Article();
        $newArticle->user_id = Auth::user()->id;
        $newArticle->article = $article;
        $newArticle->save();

        return redirect(route('article.index'))->withSuccess('Modification de l\'article réussi !');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function destroy(Article $article)
    {
        $article->delete();
        return redirect()->route('article.index')->with('success', 'Tâche supprimée avec succès !');
    }
}
