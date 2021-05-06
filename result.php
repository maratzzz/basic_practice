<?php
    $servername = "localhost";
    $username = " "; // измените на свои значения
    $password = " "; // измените на свои значения
    $db = "form";
    
    $mysqli = mysqli_connect($servername, $username, $password, $db);
    if (!$mysqli) {
      die("Connection failed: " . mysqli_connect_error());
    }


$results_per_page = 10; // Измените это значение, если нужно другое количество результатов на 1 странице. 


$sql = "SELECT * FROM customers";
$result = mysqli_query($mysqli,$sql);
$number_of_results = mysqli_num_rows($result);


$number_of_pages = ceil($number_of_results/$results_per_page) . '<br/>';


if (!isset($_GET['page'])) {
    $page = 1;
} else {
    $page = $_GET['page'];
}


$this_page_first_result = ($page-1)*$results_per_page;


$customers = $mysqli->query("SELECT * FROM customers LIMIT " . $this_page_first_result . ',' . $results_per_page);
while ($result = mysqli_fetch_array($customers, MYSQLI_ASSOC)) {
    $users[] = $result;
}




for ($page=1;$page<=$number_of_pages;$page++) {
    echo '<a style="margin-left:50px; "href="result.php?page=' . $page . '">' . $page . '</a>';
}

require 'result.html';
exit;