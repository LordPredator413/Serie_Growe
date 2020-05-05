<?php
include "polacz.php";
$Seria = wczytaj("Seria");
$Początek = wczytaj("Początek");
$Typ= wczytaj("Typ");

$sql = $baza->prepare("INSERT INTO producenci VALUES (?, ?, ?);");
if ($sql)
{
        $sql->bind_param("sis", $Seria, $Początek, $Typ);
        $sql->execute();
        $sql->close();
}
else
    die( 'Błąd: '. $baza->error);
$baza->close();
header ("Location: index.php");
?>