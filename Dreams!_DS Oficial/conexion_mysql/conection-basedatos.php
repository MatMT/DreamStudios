<?php
    $server = "localhost";
    $username = "root";
    $passware = "";
    $database = "prueba_dreams";

    try{
        $conexion = new PDO("mysql:host=$server;dbname=$database;", $username, $passware);
    }catch (PDOException $e){
        die("Conexion fallida: ".$e->getMessage());
    }
?>