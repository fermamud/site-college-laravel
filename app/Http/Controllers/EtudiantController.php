<?php

namespace App\Http\Controllers;

use App\Models\Etudiant;
use App\Models\Ville;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
//use App\Http\Controllers\User;

class EtudiantController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $etudiants = Etudiant::all();
        // return view('etudiant.index', ['etudiants' => $etudiants]);

        $etudiants = Etudiant::select()
                    ->orderBy('id')
                    ->paginate(50);
        return view('etudiant.index', ['etudiants' => $etudiants]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $villes = Ville::all();
        return view('etudiant.create', ['villes' => $villes]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // return $request;
        $request->validate([
            'nom' => 'required|max:191',
            'adresse' => 'required|string',
            'telephone' => 'required|max:191',
            'email' => 'required|max:191|unique:users,email',
            'date_naissance' => 'required|date',
            'ville_id' => 'required|not_in:0',
            'password' => 'required|min:6|max:20'
        ]);
    
        $password = Hash::make($request->password);
        $user = User::create([
            'nom' => $request->nom,
            'email' => $request->email,
            'password' => $password
        ]);
        
        $id = $user->id;
        $etudiant = Etudiant::create([
            'id' => $id,
            'adresse' => $request->adresse,
            'telephone' => $request->telephone,
            'date_naissance' => $request->date_naissance,
            'ville_id' => $request->ville_id,
        ]);
        
        $etudiants = Etudiant::all();
        return redirect()->route('etudiant.index', ['etudiants' => $etudiants])->with('success', 'Nouvel étudiant créé avec succès !');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function show(Etudiant $etudiant)
    {
        return view('etudiant.show', ['etudiant' => $etudiant]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function edit(Etudiant $etudiant)
    {
        $users = User::all();   
        $villes = Ville::all();
        return view('etudiant.edit', ['etudiant' => $etudiant, 'villes' => $villes, 'users' => $users]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Etudiant $etudiant)
    {
        $user = User::select()
                        ->where('id', $etudiant->id)
                        ->get();

        $request->validate([
            'nom' => 'required|max:191',
            'adresse' => 'required|string',
            'telephone' => 'required|max:191',
            'email' => 'required|max:191|unique:users,email,' . $etudiant->id,
            'date_naissance' => 'required|date',
            'ville_id' => 'required|integer'
        ]);

        $user[0]->update([
            'nom' => $request->nom,
            'email' => $request->email
        ]);

        $etudiant->update([
            'adresse' => $request->adresse,
            'telephone' => $request->telephone,
            'date_naissance' => $request->date_naissance,
            'ville_id' => $request->ville_id,
        ]);

        return redirect()->route('etudiant.show', $etudiant->id)->with('success', 'Étudiant mis à jour avec succès !');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function destroy(Etudiant $etudiant)
    {
        $user = User::select()
                        ->where('id', $etudiant->id)
                        ->get();
                        
        $etudiant->delete();
        $user[0]->delete();
        $etudiants = Etudiant::all();
        return redirect()->route('etudiant.index')->with('success', 'Étudiant supprimé avec succès !');
    }
}

