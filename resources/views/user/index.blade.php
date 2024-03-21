@extends('layouts.app')
@section('title', 'User List')
@section('content')
<h1 class="mt-5 mb-4">User List</h1>
<div class="row justify-content-center">
    <div class="col-md-12">
        <div class="card-header">
            <h5 class="card-title">Users</h5>
        </div>
        <div class="card-body">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Connexion</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($users as $user)
                    <tr>
                        <th>{{ $user->id }}</th>
                        <td>{{ $user->nom }}</td>
                        <td>{{ $user->email }}</td>
                        <td><a href="{{ route('login') }}">Login</td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
            {{ $users }}
        </div>
    </div>
</div>
@endsection