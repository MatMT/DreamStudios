<?php
    session_start();

    session_unset();

    session_destroy();

    header("Location: ../New_log_in/log_in.php")
?>