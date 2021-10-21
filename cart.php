<?php 
  require('mysqli_connect.php');
    include(header.html);
    session_start();
    $product_id = array();
    session_destroy();

    if($_SERVER['REQUEST_METHOD'] == 'POST') {
//        if(isset($_SESSION['cart'])) {
//            $count = count($_SESSION['cart']);
//            
//            $product_id = array_column($_SESSION['cart'],'id');
//            echo $count;
//            if (!in_array(filter_input(INPUT_GET,'id'))) {
//                $_SESSION['cart'][$count] = array(
//                'id' => filter_input(INPUT_GET,'id'),
//                'name' => filter_input(INPUT_POST,'name'),
//                'price' => filter_input(INPUT_POST,'price'),
//                'quantity' => filter_input(INPUT_POST, 'quantity')
//            );    
//        }  
//        }
//        else {
            $_SESSION['cart'][0] = array(
                'id' => filter_input(INPUT_GET,'id'),
                'name' => filter_input(INPUT_POST,'name'),
                'price' => filter_input(INPUT_POST,'price'),
                'quantity' => filter_input(INPUT_POST, 'quantity')
            );
        }
print_r($_SESSION);
?>