<?php
    $servername = "localhost";
    $username = " "; // измените на свои значения
    $password = " "; // измените на свои значения
    $db = "form"; 
    
    $mysqli = mysqli_connect($servername, $username, $password, $db);
    if (!$mysqli) {
      die("Connection failed: " . mysqli_connect_error());
    }

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $alert_insert = "";
    $name = trim($_REQUEST['name']);
    $email = trim($_REQUEST['email']);
    $subscribe = ($_REQUEST['subscribe']);
    $category = $_REQUEST['category'];
    $file = $_REQUEST['file'];
    $theme = $_REQUEST['theme'];
    $message = trim($_REQUEST['message']);

    $mysqli->query("INSERT INTO customers (name,email,subscribe,category,file,theme,message) VALUES ('$name','$email','$subscribe','$category','$file','$theme','$message')");
}

require 'index.php';
exit;