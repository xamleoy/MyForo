<?php

$serverName = "localhost";
$dBUsername = "root";
$dBPassword = "";
$dBName = "klik_database";

$conn = mysqli_connect($serverName, $dBUsername, $dBPassword, $dBName);

if (!$conn)
{
    die("Connection failed: ". mysqli_connect_error());
}


// despues de db name $serverName, $dBUsername, $dBPassword, $dBName,3307 