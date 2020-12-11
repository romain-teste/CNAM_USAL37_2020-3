<?php

$pays = [
    'France' => 'Paris',
    'Belgique' => 'Bruxelles',
];

// array_key_exists()
// empty()

function capitalCity(string $nom_pays)
{
    // A vous de jouer !

    return "";  // le nom de la capitale
}


echo capitalCity('France'); // affiche Paris
echo capitalCity('Belgique'); // affiche Bruxelles
echo capitalCity('Suisse'); // affiche Capitale inconnue