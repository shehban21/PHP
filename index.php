<?php
    include('header.html');
?>

    <body class="container">

        <main>
            <?php
            require('mysqli_connect.php');
            
            $q = "SELECT * FROM products;";
            $r = @mysqli_query($dbc,$q);
        if($r):
            if(mysqli_num_rows($r) > 0):
        while($row = mysqli_fetch_array($r, MYSQLI_ASSOC)):
            ?>
                <form method="post" action="index.php?action=add&id=<?php echo $row['productid']; ?>">
                    <div class=row>
                        <div class="col-md-6"><img class="proim" src="images/<?php echo $row['image']; ?>"></div>
                        <div class="col-md-6">
                            <h3>Product:
                                <?php echo $row['productname']; ?><br><br> Price:
                                <?php echo $row['productprice']; ?>
                            </h3><br>
                            <label for="quantity">Quantity: </label>
                            <input style="width:40px;" type="number" name="quantity" value="1"><br><br>
                            <button type="button" class="btn btn-primary" name="addcart">Add to Cart</button><br><br>
                            <button type="button" class="btn btn-primary" name="buynow">Buy Now</button>
                        </div>
                    </div>
                </form>
                <br>
        </main>
    </body>
    <?php 
endwhile;
endif;
endif;
    include('footer.html');
    ?>