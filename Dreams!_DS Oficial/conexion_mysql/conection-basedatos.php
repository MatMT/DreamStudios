<?php
    $server = "localhost";
    $username = "root";
    $passware = "";
    $database = "test";

    try{
        $conexion = new PDO("mysql:host=$server;dbname=$database;", $username, $passware);
    }catch (PDOException $e){
        die("Conexion fallida: ".$e->getMessage());
    }
    
?>