
    <div class="cart-page inner-page all-inners">
    
    <form action="<?= base_url('checkout');?>" method="post">
    <div class="cart-section">
        <div class="container-1730">
            <h1 class="inner-main-head">CART</h1>
            <div class="row">
                <div class="col-lg-8">
                    <div class="row cart-top-row">
                        <div class="col-3">
                            <h3 class="cart-top-head">PRODUCT</h3>
                        </div>
                        <div class="col-3">
                            <h3 class="cart-top-head">PRICE</h3>
                        </div>
                        <div class="col-3">
                            <h3 class="cart-top-head">QUANTITY</h3>
                        </div>
                        <div class="col-3">
                            <h3 class="cart-top-head">SUBTOTAL</h3>
                        </div>
                    </div>
                    <!-- cart top  -->
                    <div class="cart-body-content">
                        <?php foreach($this->cart->contents() as $d):?>
                        <div class="row cart-body-row">
                            <div class="col-3">
                                <div class="product">
                                    <a href="#"><img src="<?= base_url('uploads/product/'.$d['img']);?>" alt=""></a>
                                    <h3 class="product-head"><?= $d['name'];?> </h3>
                                </div>
                            </div>
                            <div class="col-3">
                                <span class="product-price">$<?= $d['price'];?></span>
                            </div>
                            <div class="col-3" id="product-1">
                                    <button type="button" class="button cart_plus">+</button>
                                    <button type="button" class="button cart_minus">-</button>
                                		<input type="number" class="input" value="<?= $d['qty'];?>" min="1" />
                            </div>
                            <div class="col-3">
                                <span class="total-price ds">$<?= $d['subtotal'];?></span>
                               <a href="<?= base_url('cart/remove/'.$d['rowid']);?>" class="cross"><i class="fas fa-times"></i></a>
                            </div>
                        </div>
                        <?php endforeach;?>
                    </div>
                    <!-- body  -->

                    <div class="row coupon-btn-row">
                        <div class="col-lg-12">
                            
                            <div class="cart-btns-up">
                                <input type="text" placeholder="COUPON CODE" class="form-control coupon-field">
                                <a href="#"><button class="cart-btn"><span>APPLY COUPON</span></button></a>
                                <div class="clear-btn">
                                <a href="<?= base_url('cart/destroy');?>"><button type="button" class="cart-btn update-cart"><span>CLEAR CART</span></button></a>
                            </div>
                            </div>
                        </div>
                    </div>
                    
                    
                </div>
                <div class="col-lg-3">
                    
                    <div class="subtotal-sidebar">
                        <h1 class="cart-total">CART TOTALS</h1>
                        <div class="row subtotal-row">
                            <h3 class="cart-total-price subtotal">SUBTOTAL</h3>
                            <span class="subtotal-price">$<?= $this->cart->total();?></span>
                        </div>
                        <div class="row subtotal-row">
                            <h3 class="cart-total-price subtotal">COUPON</h3>
                            <span class="subtotal-price">$0</span>
                        </div>
                        <div class="row">
                            <h3 class="cart-total-price total">TOTAL</h3>
                            <span class="total-price">$<?= $this->cart->total();?></span>
                        </div>
                    </div>

                </div>
            </div>
        </div>
         <button class="second-menu-btn"><span>PROCEED TO CHECKOUT</span></button>
    </div>
</form>


    </div>
 
<script>
var i = 1;
    $('.cart_plus').click(function(){
        var sub = $(".input").val();
        $(".ds").html(sub * <?= $d['price']; ?>);
    })
    $('.cart_minus').click(function(){
        var currentPrice = $(".ds").html();
        var currentPrice = $(".total-price").html();
        const prod = <?= $d['price']; ?>;
        $(".ds").html(currentPrice - prod);
        $(".total-price").html(currentPrice - prod);
    })
</script>