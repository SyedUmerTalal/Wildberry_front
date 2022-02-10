<div style="width: 650px; margin:auto;">
	<style type="text/css">
	
@font-face {
    font-family: 'Giaza';
    src: url(../fonts/Giaza.otf);
}

@font-face {
    font-family: 'Eternate';
    src: url(../fonts/Eternate_Two.otf);
}
</style>
    
    <table align="center" width="650px" cellspacing="0" cellpadding="0" style="width: 650px; margin:auto; border: 1px solid #CECECE;">
        <tbody>
            <tr height="80" valign="top">
                <td height="80" style="position: relative;padding: 0 0px 0; ">
                    <table border="0" cellpadding="0" cellspacing="0" width="100%" style="position: relative;">
                        <tbody>
                            <tr>
                                <div class="receipt-row" style="display:flex;justify-content: space-between; align-items:center; padding: 10px 20px; border-bottom: 1px solid #cecece;">
                                    
                                    <h4 style=" font-size:22px;text-transform: capitalize;color: #2d94d3;">thank you,<span style="color: #212B5F;margin-left: 10px;"><?= $body['customer']['name'];?></span></h4>
                                    <img style="width: 110px;height: auto;object-fit: cover;" src="<?= base_url('assets/front/homepage/logo.png');?>" alt="" class="img-bg-email">
                                    
                                    
                                </div>
                            </tr>

                            <tr>
                                <div class="receipt-row" style=" display: flex;align-items: center;justify-content: space-between;padding: 15px 40px;">
                                    <h4>Image</h4>
                                    <div class="receipt-row-inner" style="display: flex;min-width: 330px;justify-content: space-between;">
                                    <h5 style="text-transform: capitalize;font-weight: 500;font-size: 15px;color: #000;">product</h5>
                                    <h5 style="text-transform: capitalize;font-weight: 500;font-size: 15px;color: #000;">Quatity</h5>
                                    <h5 style="text-transform: capitalize;font-weight: 500;font-size: 15px;color: #000;">Price</h5>
                                    </div>
                                </div>
                            </tr>
                            
                            <?php foreach($body['cart'] as $c):?>
                            <tr>
                                <div class="receipt-row" style=" display: flex;align-items: center;justify-content: space-between;padding: 15px 20px;">
                                    <div class="receipt-row-inner" style="display: flex;width:100%;justify-content: space-between; border: 1px solid #cecece; padding: 15px 20px;border-radius: 5px;">
                                    <img style="width: 80px;object-fit: contain;" src="<?= base_url('uploads/product/'.$c['img']);?>" alt="" class="img-bg-email">
                                    <div style="min-width: 330px;display: flex;justify-content: space-between;">
                                    <h5 style="text-transform: capitalize;font-weight: 500;font-size: 15px;color: #000; overflow: hidden;text-overflow: ellipsis;white-space: nowrap;width: 70px;"><?= $c['name'];?></h5>
                                    <h5 style="text-transform: capitalize;font-weight: 500;font-size: 15px;color: #000;">Qty:<span><?= $c['qty'];?></span></h5>
                                    <h5 style="text-transform: capitalize;font-weight: 500;font-size: 15px;color: #000;">$<?= $c['subtotal'];?></h5>
                                    </div>
                                    </div>
                                </div>
                            </tr>
                            <?php endforeach;?>

                            <tr>
                                <div class="main-order" style="    display: flex;justify-content: space-between; padding: 20px 20px;">
                                    <div class="main-order-1">
                                        <div class="main-order-left">
                                            <p style="    font-size: 17px;color: #000; font-weight: 500; text-transform: capitalize; padding-bottom: 5px;">You will be notify via Email/SMS</p>
                                        </div>
                                    </div>
                                    <div class="main-order-2" style="display: flex;justify-content: space-between;">
                                        <div class="main-order-right" style="    margin-right: 25px;">
                                            <p style="    font-size: 17px;color: #000;font-weight: 600;text-transform: capitalize;padding-bottom: 5px;">total</p>
                                        </div>
                                        <div>
                                            <p class="order-price" style="    font-size: 17px;color: #000;font-weight: 500;text-transform: capitalize;padding-bottom: 5px;">$<?= $body['customer']['cod_amount'];?></p>
                                        </div>
                                    </div>
                                </div>
                            </tr>

                        </tbody>
                    </table>
               </td>
           </tr>
        </tbody>
    </table>
    
</div>