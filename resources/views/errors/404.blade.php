<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page 404</title>
    <link rel="stylesheet" href="{{ asset('css/accueil.css') }}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
    <h1 class="m-5 text-center">Page non trouvée</h1>
    <p class="m-5 text-center"><a href="{{ route('etudiant.index') }}">Retourner la liste des étudiants</a></p>
</body>
</html>