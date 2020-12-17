<?php

function hello(string $name) : string
{
if ($nam === null){
    return "Hello Nodody";
}
else{
    return "Hello $name";
}

}

echo hello();
echo hello("Romain");

