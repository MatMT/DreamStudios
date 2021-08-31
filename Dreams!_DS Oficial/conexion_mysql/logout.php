<?php
    session_start();

    session_unset();

    session_destroy();

    header("Location: ../Pagina General/Página-general-Oficial/Paginageneral.html")
?>