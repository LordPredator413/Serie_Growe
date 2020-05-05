<html>
 <head>
  <meta charset="utf-8">
  <title>Dodaj nową Serię</title>
 </head>
 <body>
  <h1>Nowa Seria</h1>
  <form method="get" action="insert.php">
   <table border="0">
      <tr><td>Seria</td><td><input name="Seria"></td></tr>
      <tr><td>Początek</td><td><input name="Poczatek"></td></tr>
   </table>
        Seria
        <select name="Typ">
             <?php
                include "polacz.php";
                if ($sql =  $baza->prepare("SELECT Seria FROM serie;"))
                         {
                            $sql->execute();
                            $sql->bind_result($Seria);
                            while ($sql->fetch())
                                {
                                    echo " <option value=$Seria>$Seria</option> ";
                                }
                                $sql->close();
                         }
                        else die( "Błąd w zapytaniu SQL! Sprawdź kod SQL w PhpMyAdmin: ". $baza->error );

                         $baza->close();
                 ?>
        </select>
    </br>
    <input type="submit" value="Dodaj">
  </form>
 </body>
</html>