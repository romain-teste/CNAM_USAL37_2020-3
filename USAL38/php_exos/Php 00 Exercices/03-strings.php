<?php

//3.A
function getMC2(){
    return "Albert Einstein";
}

echo getMC2();

//3.B
function getUserName($name1, $name2){
    return $name1 ." " . $name2;
}

echo getUserName("Romain", "TESTE");

//3.C
function getFullName($nom, $prenom){
    return $prenom . " " . strtoupper($nom);
}

echo getFullName("teste", "romain");

//3.D
function askUser($nom2, $prenom2){
    echo('bonjour '.getFullName($nom, $prenom).'.'.'Connaissez-vous '.getMC2());
}

askUser("test", "romain");
