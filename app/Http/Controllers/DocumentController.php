<?php

namespace App\Http\Controllers;

use App\Models\Document;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Stroage;

class DocumentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $documents = Document::all();
        return view('document.index', compact('documents'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if (Auth::user()->id) {
            $id = Auth::user()->id;
            return view('document.create', ['user_id' => $id]);
        }
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
            'en' => 'required',
            'fr' => 'nullable',
            'date' => 'required',
            'document' => 'required'
        ]);

        $nom = [
            'en' => $request->en
        ];

        if($request->fr != null) {
            $nom = $nom + ['fr' => $request->fr];
        }
        //return $request;
        
        $document = new Document();

        $file = $request->document;
        $filename = time() . "." . $file->getClientOriginalExtension();
        $request->document->move('assets', $filename);
        
        $document->document = $filename;
        $document->user_id = $request->user_id;
        $document->nom = $nom;
        $document->date = $request->date;
        $document->save();

        return redirect()->route('document.index')->with('success', 'Document ajoutée avec succès !');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Document  $Document
     * @return \Illuminate\Http\Response
     */
    public function show(Document $document)
    {
        //
    }

    /**
     * Upload file
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function download(Request $request, $document)
    {
        return response()->download(public_path('assets/' . $document));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Document  $Document
     * @return \Illuminate\Http\Response
     */
    public function edit(Document $document)
    {
        return view('document.edit', compact('document'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Document  $Document
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Document $document)
    {
        $request->validate([
            'en' => 'required',
            'fr' => 'nullable',
            'date' => 'required',
            'document' => 'required'
        ]);

        $nom = [
            'en' => $request->en
        ];

        if($request->fr != null) {
            $nom = $nom + ['fr' => $request->fr];
        }

        $file = $request->document;
        $filename = time() . "." . $file->getClientOriginalExtension();
        $request->document->move('assets', $filename);
        $document->document = $filename;

        $document->update([
            'nom' => $nom,
            'date' => $request->date,
        ]);

        // $documents = Document::all();
        // return view('document.index', compact('documents'));
        return redirect()->route('document.index')->with('success', 'Document modifiée avec succès !');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Document  $Document
     * @return \Illuminate\Http\Response
     */
    public function destroy(Document $document)
    {
        $document->delete();
        return redirect()->route('document.index')->with('success', 'Document supprimée avec succès !');
    }
}
