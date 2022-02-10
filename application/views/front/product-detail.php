<section class="products">
    <div class="container-1730">
    <h1 class="breakfast-head">Product</h1>
        <div class="row">
            <?php foreach($prod_cat as $d):?>
            <div class="col-md-4 col-lg-3">
                <div class="breakfast-img-box">
                    <div class="break-overlay-content">
                            <img src="<?= base_url('uploads/product/'.$d->product_image);?>" alt="">
                        <a  data-name="<?= $d->product_name; ?>" 
                            data-price="<?= $d->product_price; ?>" 
                            data-id="<?= $d->product_id; ?>" 
                            data-img="<?= $d->product_image; ?>" 
                            class="cart-icon add_cart" style="cursor: pointer;">
                            <span class="cart">
                                <i class="fas fa-shopping-cart"></i>
                            </span>
                        </a>
                        <a href="#"><h3 class="over-head"><?= $d->product_name;?></h3></a>
                        <p class="overlay-text"><?= $d->product_desc;?></p>
                        <span class="price">$<?= $d->product_price;?></span>
                    </div>
                    <a href="<?= base_url('uploads/product/'.$d->product_image);?>"  data-fancybox><img src="<?= base_url('uploads/product/'.$d->product_image);?>" alt=""></a>
                </div>  
            </div>
            <?php endforeach; ?>
        </div>
    </div>
</section>


<script type="text/javascript">
    
$(document).ready(function(){
 var counter = 0;
 $('.add_cart').click(function(){
    var id = $(this).data("id");
    var name = $(this).data("name");
    var price = $(this).data("price");
    var img = $(this).data("img");
    var id_data = {id:''};
   $.ajax({
    url:"<?= base_url('cart/add'); ?>",
    method:"POST",
    data:{id:id, name:name, price:price, img:img},
    dataType: 'json',
    success:function(data)
    {      
    location.reload();
    }
   });
 });


});

</script>