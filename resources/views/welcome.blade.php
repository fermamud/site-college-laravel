<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Collège de Maisonneuve</title>
    <link rel="stylesheet" href="{{ asset('css/accueil.css') }}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
    <header class="m-3">
        <nav class="nav nav-pills flex-column flex-sm-row m-5">
            <a class="flex-sm-fill text-lg-center fs-1 nav-link" aria-current="page" href="{{ route('etudiant.index') }}">@lang('List of students')</a>
            <a class="flex-sm-fill text-lg-center fs-1 nav-link" href="{{ route('etudiant.create') }}">@lang('Add student')</a>
        </nav>
    </header>
    <main>
        <h1 class="text-lg-center align-middle justify-content-center">@lang('Welcome')</h1>
    </main>
</body>
</html>