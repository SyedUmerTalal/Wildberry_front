 
<?php include 'inc/header.php';?>
    <div class="cart-section pay-section">
        <div class="container-1730">
            <h1 class="inner-main-head">PAY</h1>
            <div class="row checkout-row">
                <div class="col-lg-6">
                    <form class="cheakout-form pay-form" action="<?= base_url('pay/payment');?>" method="post">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Cardholder's Name" name="card_name" required>
                        </div>
                        <div class="form-group card-number-group">
                            <input type="text" class="form-control" placeholder="Card Number" name="card_number" required>
                            <a href="#"><span><img src="<?= base_url();?>assets/front/product/credit-card.png" alt=""></span></a>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="CVV" name="cvv" required>
                        </div>
                        <div class="form-group hz-date">
                            <input type="text" class="form-control" placeholder="Month" name="month" required maxlength="2" minlength="2">
                            
                            <input type="year" class="form-control" placeholder="Year" name="year" required maxlength="4" minlength="4">
                            <input type="hidden" name="total_amount" value="<?= $this->cart->total();?>">
                        </div>
                   
                </div>
                <div class="col-lg-2"></div>
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
         <button class="second-menu-btn"><span>PAY NOW</span></button>
    </div>
    </form>

    </div>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <!-- bootstrap -->
    <script src="<?= base_url('assets/front/js/bootstrap.min.js');?>"></script>
    <!-- slick slider  -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.js" integrity="sha512-WNZwVebQjhSxEzwbettGuQgWxbpYdoLf7mH+25A7sfQbbxKeS5SQ9QBf97zOY4nOlwtksgDA/czSTmfj4DUEiQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- full page  -->
    <!--<script src="https://rawgit.com/alvarotrigo/fullPage.js/dev/src/fullpage.js"></script>-->
    <!-- aos  -->
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <!-- custom js -->
    <script src="<?= base_url('assets/front/js/custom.js');?>"></script>
    
    <script src="https://cdn.jsdelivr.net/npm/@fancyapps/fancybox@3.5.6/dist/jquery.fancybox.min.js"></script>