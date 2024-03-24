<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title')</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
</head>
<body>
    @php $locale = session()->get('locale') @endphp
    <header class="">
        <img src="{{ asset('images/logo.svg') }}" class="logo" alt="Logo">
        <nav class="nav nav-pills flex-column flex-sm-row m-5">
            @if(request()->routeIs('etudiant.show'))
            <a class="flex-sm-fill text-sm-center nav-link {{ request()->routeIs('etudiant.show') ? 'active' : '' }}" href="{{ route('etudiant.index') }}">@lang('Details of a student')</a>
            @elseif(request()->routeIs('etudiant.edit'))
            <a class="flex-sm-fill text-sm-center nav-link {{ request()->routeIs('etudiant.edit') ? 'active' : '' }}" href="{{ route('etudiant.index') }}">@lang('Modification of a student')</a>  
            @else
            <a class="flex-sm-fill text-sm-center nav-link" href="/">@lang('Home')</a>
            @endif
            <a class="flex-sm-fill text-sm-center nav-link {{ request()->routeIs('etudiant.index') ? 'active' : '' }}" href="{{ route('etudiant.index') }}">@lang('List of students')</a>
            <a class="flex-sm-fill text-sm-center nav-link {{ request()->routeIs('etudiant.create') ? 'active' : '' }}" href="{{ route('etudiant.create') }}">@lang('Add student')</a>
            @auth
                <a class="flex-sm-fill text-sm-center nav-link {{ request()->routeIs('article.index') ? 'active' : '' }}" href="{{ route('article.index') }}">@lang('Forum')</a>
                <a class="flex-sm-fill text-sm-center nav-link {{ request()->routeIs('document.index') ? 'active' : '' }}" href="{{ route('document.index') }}">@lang('Documents')</a>
            @endauth
            @guest
                <a class="flex-sm-fill text-sm-center nav-link {{ request()->routeIs('login') ? 'active' : '' }}" href="{{ route('login') }}">@lang('Login')</a>
            @else
                <a class="flex-sm-fill text-sm-center nav-link {{ request()->routeIs('logout') ? 'active' : '' }}" href="{{ route('logout') }}">@lang('Logout')</a>
            @endguest
            <ul class="navbar-nav mb-2 mb-sm-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown"
                        aria-expanded="false">@lang('Language') {{ $locale == '' ? "(en)" : "($locale)"}}</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="{{ route('lang', 'en') }}">@lang('English')</a></li>
                        <li><a class="dropdown-item" href="{{ route('lang', 'fr') }}">@lang('French')</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </header>
    <main>
        @if(session('success'))
            <div class="alert alert-success alert-dismissable fade show" role="alert">
                {{ session('success') }}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-lable="Close"></button>
            </div>
        @endif
        @yield('content')
    </main>
    <footer class="footer py-2 bg-dark text-white">
        <div class="container text-center">
            &copy;Collège de Maisonneuve. @lang('lang.text_copyright')
        </div>
    </footer>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</html>