<?php
// 2.A
function getSub($A, $B){
    return $A + $B;
}

getSub(5, 3);

//2.B
function getSub2($C, $D){
    return $C - $D;
}

getSub2(5, 3);

//2.C
function getMulti($E, $F){
    $multi = $E * $F;
    echo round($multi, 2);
}

getMulti(5.6, -3.7);

//2.D
function getDiv($G, $H){
    if($H === 0){
        echo("0");
    }
    else{
    $div = $G / $H;
    echo round($div, 2);
    }
}

getDiv(20, 3);
