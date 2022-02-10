
<section class="cake-detail">
    <?php foreach($cake as $d):?>
    <div class="container">
        <h1 class="cake-heading">cake details</h1>
        <div class="row">
            <div class="col-lg-4">
                <img src="<?= base_url('uploads/cake/').$d->image;?>">
            </div>
            <div class="col-lg-8">
                <div class="cake-detail-2">
               <h1 class="cake-name"><?= $d->name;?></h1>
               <!--<p class="cake-price">$<?= $d->price;?></p>-->
               <p class="cake-desp"><?= $d->desc;?></p>
               <!--<a -->
               <!-- data-name="<?= $d->name; ?>" -->
               <!-- data-price="<?= $d->price; ?>" -->
               <!-- data-id="<?= $d->cake_id; ?>" -->
               <!-- data-img="<?= $d->image; ?>" -->
               <!-- style="cursor: pointer;"-->
               <!-- class="cake-buy add_cake">Order now</a>-->
                
                <!--<a href="#" class="cake-buy">Order now</a>-->
               </div>
            </div>
        </div>
    </div>
    <?php endforeach;?>
    
</section>

<script type="text/javascript">
    
$(document).ready(function(){
 var counter = 0;
 $('.add_cake').click(function(){
    var id = $(this).data("id");
    var name = $(this).data("name");
    var price = $(this).data("price");
    var img = $(this).data("img");
    var id_data = {id:''};
   $.ajax({
    url:"<?= base_url('checkout_cake/addProduct'); ?>",
    method:"POST",
    data:{id:id, name:name, price:price, img:img},
    dataType: 'json',
    success:function(data)
    {      
    window.location.href('checkout_cake');
    }
   });
 });


});

</script>