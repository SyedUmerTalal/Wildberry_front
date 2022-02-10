    <div class="cart-section checkout-section">
        <div class="container-1730">
            <h1 class="inner-main-head">Checkout</h1>
            <div class="row checkout-row">
                <div class="col-lg-6">
                    <form class="cheakout-form" action="<?= base_url('checkout_cake/add');?>" method="post">
                        <div class="form-group checbox-zb">
                            <label for="html">Cash On Delivery</label><br>
                            <input type="radio" class="form-control" placeholder="Full Name" name="cod" value="COD">
                        </div>
                        <div class="form-group checbox-zb">
                            <label for="html">Pick Up</label><br>
                            <input type="radio" class="form-control" placeholder="Full Name" name="pickup" value="PICKUP">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Full Name" name="name" required value="<?php echo set_value('name');?>">
                        </div>
                        <div class="form-group">
                            <input type="phone" class="form-control" placeholder="Phone Number" name="phone" required value="<?php echo set_value('phone');?>">
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" placeholder="Email" name="email" required value="<?php echo set_value('email');?>">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Address" name="address" required value="<?php echo set_value('address');?>">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Any Request?" name="req" value="<?php echo set_value('req');?>">
                        </div>
                </div>
                <div class="col-lg-2"></div>
               <div class="col-lg-3">
                    
                    <div class="subtotal-sidebar">
                        <h1 class="cart-total">TOTALS</h1>
                        <div class="row subtotal-row">
                            <h3 class="cart-total-price subtotal">SUBTOTAL</h3>
                            <span class="subtotal-price">$<?= $this->session->userdata(['checkout_cake']['price']);?></span>
                        </div>
                        <div class="row">
                            <h3 class="cart-total-price total">TOTAL</h3>
                            <span class="total-price">$<?= $this->session->userdata(['checkout_cake']['price']);?></span>
                        </div>
                    </div>

                </div>
            </div>
        </div>
         <button id="proceed-status"  class="second-menu-btn"><span>PROCEED TO PAY</span></button>





    </div>
    </form>
    
   

    </div>
