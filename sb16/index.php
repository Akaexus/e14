<!DOCTYPE html>
<html lang="pl">
  <head>
    <meta charset="UTF-8">
    <title>Filmoteka</title>
    <link rel="stylesheet" href="styl3.css">
  </head>
  <body>
    <header class="banner">
      <div>
        <img src="klaps.png" alt="Nasze filmy">
      </div>
      <div>
        <h1>BAZA FILMÓW</h1>
      </div>
      <div>
        <form method="post">
          <select name="gatunek">
            <option value="Sci-Fi">Sci-Fi</option>
            <option value="animacja">animacja</option>
            <option value="dramat">dramat</option>
            <option value="horror">horror</option>
            <option value="komedia">komedia</option>
          </select>
          <input type="submit" name="s" value="Filmy">
        </form>
      </div>
      <div>
        <img src="gwiezdneWojny.jpg" alt="Szturmowcy">
      </div>
    </header>
    <main>
      <div class="left">
        <h2>Wybrano filmy</h2>
        <?php
          // tu baza powinna być 'dane', ale ja mam e14
          if (isset($_POST['s'])) {
            $c = mysqli_connect('localhost', 'root', '1234', 'e14');
            if (mysqli_errno($c)) {
              echo 'Błąd połączenia z bazą danych!';
            } else {
              $query = $c->query("select * from filmy f join gatunki g on f.gatunki_id = g.id where g.nazwa = '{$_POST['gatunek']}'");
                while ($row = $query->fetch_assoc()) {
                  echo "<p>Tytuł: {$row['tytul']}, Rok produkcji: {$row['rok']}, Ocena: {$row['ocena']}</p>";
                }
              $c->close();
            }
          }
        ?>
      </div>
      <div class="right">
        <h2>Wszystkie filmy</h2>
        <?php
        $c = mysqli_connect('localhost', 'root', '1234', 'e14');
        if (mysqli_errno($c)) {
          echo 'Błąd połączenia z bazą danych!';
        } else {
          $query = $c->query('select f.id, tytul, imie, nazwisko from filmy f join rezyserzy r on f.rezyserzy_id=r.id');
          while ($row = $query->fetch_assoc()) {
            echo "<p>{$row['id']}, {$row['tytul']}, reżyser {$row['imie']} {$row['nazwisko']}</p>";
          }
        }
        ?>
      </div>
    </main>
    <footer>
      <p>Autor: 00000000000</p>
      <a href="kwerendy.txt">Zapytania do bazy</a>
      <a href="//filmy.pl" target="_blank">Przejdź do filmy.pl</a>
    </footer>
  </body>
</html>
