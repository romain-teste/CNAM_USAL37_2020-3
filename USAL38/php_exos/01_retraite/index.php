<?php 
/*
L'âge de la retraite est fixé à 55 ans

SI l'âge fourni ($age) est supérieur à l'âge de la retraite ($retraite)
    alors
    afficher (echo) "vous êtes à la retraite depuis X années"

SINON SI l'âge fourni ($age) est inférieur à l'âge de la retraite ($retraite)
    alors   
    afficher (echo) "Il vous reste X années  avant la retraite"

SINON 
    alors
    afficher (echo) "La retraite c'est cette année"


*/

$retraite = 55;

$age = 60;

if ($age > $retraite) {

    $difference = $retraite - $age;
    echo "vous êtes à la retraite depuis ".$difference." années";
}else if ($age < $retraite){
    $difference = $age - $retraite;
    echo "Il vous reste ".$difference." avant la retraite";
}else if ($age = $retraite){
    echo "La retraite c'est cette année";
}elseif ($age < 0) {
    echo "Vous ne pouvez pas avoir un âge négatif";
}

