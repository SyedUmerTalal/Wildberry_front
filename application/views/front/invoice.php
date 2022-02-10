<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wildberry</title>
    <!-- fontawesome -->
    <link rel="stylesheet" href="https://webprojectmockup.com/custom/wildberry/assets/front/links/fontawesome/css/all.css">
    <!-- full page css -->
    <!-- montserrat -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://webprojectmockup.com/custom/wildberry/assets/front/css/style.css">
</head>
<body>

    <section class="shsec-order">
    <div class="container">
            <div class="thanks-row">
                <h2>thank you for your order,<span><?= $this->session->userdata['checkout_data']['name'];?></span></h2>
                <img src="<?= base_url('assets/front/homepage/logo.png');?>">
            </div>
            <div class="receipt-row">
                <h4>Image</h4>
                <div class="receipt-row-inner">
                <h5>product</h5>
                <h5>Quatity</h5>
                <h5>Price</h5>
                </div>
            </div>
            <?php foreach($this->cart->contents() as $d):?>
            <div class="product-detail">
                <img src="<?= base_url('uploads/product/'.$d['img']);?>">
                <div class="pro-detail-inner">
                <h4 class="product-name"><?= $d['name'];?></h4>
                <h4 class="product-qty"><span><?= $d['qty'];?></span></h4>
                <h4 class="product-price">$<?= $d['price'];?></h4>
                </div>
            </div>
            <?php endforeach;?>
                <div class="main-order">
                    <div class="main-order-1">
                        <div class="main-order-left">
                            <!--<p class="order-p">Others:</p>-->
                            <!--<p>invoice number:<span>45896</span></p>-->
                            <!--<p>invoice date:&nbsp;<span>22 jan,2021</span></p>-->
                            <!--<p>receipt voucher:<span>4566</span></p>-->
                            <p>You will be notify via Email/SMS</p>
                        </div>
                    </div>
                    <div class="main-order-2">
                        <div class="main-order-right">
                            <!--<p>discount</p>-->
                            <!--<p>delivery</p>-->
                            <p>total</p>
                        </div>
                        <div>
                            <!--<p class=order-discount>$0</p>-->
                            <!--<p>free</p>-->
                            <p class=order-price>$<?= $this->cart->total();?></p>
                        </div>
                    </div>
                </div>
                
                <div class="last-sec">
                    <div class="main-last-sec">
                        <img src="<?= base_url('assets/front/homepage/logo.png');?>">
                        <h2>total amount</h2>
                        <h4 class="last-price">$<?= $this->cart->total();?></h4>
                        </div>
                </div>
                
                <div class="order-btn">
                    <a href="<?= base_url('home/back');?>">back to home</a>
                </div>
            
    </div>
</section>

</body>
