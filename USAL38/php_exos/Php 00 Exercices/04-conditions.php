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


// 4.C
$un = 100;
$deux = 100;
$trois = 300.4;

function getMax($un, $deux, $trois) {
    if ($un == $deux || $un == $trois || $trois == $deux){
        echo("0");
    } else if ($un > $deux && $un > $trois) {
        echo($un);
    } else if ($deux > $un && $deux > $trois) {
        echo($deux);
    } else if ($trois > $un && $trois > $deux) {
        echo($trois);
    }
}

getMax($un, $deux, $trois);

