<?php
    session_start();

    session_unset();

    session_destroy();

    header("Location: ../Inicio de sesión/Html/Inicio_Personal.php")
?>