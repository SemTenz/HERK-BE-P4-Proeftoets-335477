<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">
  
    <link rel="stylesheet" href="../../../public/css/style.css">
    <title>Overzicht</title>
</head>
<body>
    <u><?= $data['title']; ?></u>

    <table>
        <thead>
            <th>Naam Examinator</th>
            <th>Datum Examen</th>
            <th>Rijbewijscategorie</th>
            <th>Rijschool</th>
            <th>Stad</th>
            <th>Uitslag Examen</th>
        </thead>
        <tbody>
            <?= $data['rows']; ?>
        </tbody>
    </table>

</body>
</html>



