<html>
 <head>
  <meta charset="utf-8">
  <title>Znane Serie Growe</title>
  <link rel="stylesheet" type="text/css" href="styl.css" />
 </head>
 <body>
   <center>
 <div>
 <h1>Znane Serie Growe</h1>
  <table border="1">
  <tr>
     <th>Producent</th><th>Kraj</th><th>Rok powstania producenta</th><th>Seria </th><th>Data zapoczątkowania serii</th>
   </tr>
<?php
include "polacz.php";
if ($sql =  $baza->prepare("SELECT producenci.firma, producenci.kraj, producenci.rok_zalozenia, serie.Seria, serie.Początek FROM producenci INNER JOIN serie ON producenci.firma=serie.Typ; "))
{
        $sql->execute();
        $sql->bind_result($firma, $kraj, $rok, $Seria, $Początek,);
        while ($sql->fetch())
        {
                    echo "<tr>
                    <td>$firma</td>
                    <td>$kraj</td>
                    <td>$rok</td>
                    <td>$Seria</td>
                    <td>$Początek</td>
               </tr>";
        }
        $sql->close();
 }
else die( "Błąd w zapytaniu SQL! Sprawdź kod SQL w PhpMyAdmin: ". $baza->error );

 $baza->close();
?>
  </table>
  </br></br>
  <a href="dodaj.php">Dodaj Producenta</a>
  </br></br>
  <a href="dodaj_2.php">Dodaj Serię</a>
  </div>
</center>
 </body>
</html>