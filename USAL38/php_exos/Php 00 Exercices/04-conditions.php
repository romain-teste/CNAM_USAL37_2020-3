<?php

//4.A
function siMajor($age) {
    $maj = 18;
    $bol = var_dump($age > $maj);
    return $bol;
}

siMajor(12);

//4.B
$age= 0;
$retraite= 60;

function getRetired ($age, $retraite){
    if ($age <= 0) {
        echo("Vous n’êtes pas encore né");
    } elseif ($age < $retraite){
        $tempReste = $retraite - $age;
        echo("il vous reste $tempReste ans avant la retraite");
    } elseif ($age == $retraite){
        echo("Vous êtes à la retraite cette année");
    } elseif ($age > $retraite){
        $tempPasser= $age - $retraite;
        echo("Vous êtes à la retraite depuis $tempPasser ans");
    } 
}

getRetired ($age, $retraite);