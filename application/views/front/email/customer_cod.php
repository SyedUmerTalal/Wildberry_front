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

@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');

</style>
    
    <table align="center" width="650px" cellspacing="0" cellpadding="0" style="max-width: 650px;width:650px; margin:20px 0; border: 1px solid #CECECE;padding:15px;">
        <tbody>
            
                <tr style="padding: 10px 20px; border-top: 1px solid #cecece;">
                    <td style="font-family: 'Montserrat', sans-serif;border-top: 1px solid #cecece;border-bottom: 1px solid #cecece; font-size:22px;text-transform: capitalize;color: #2d94d3;">Thank you for your order,<span style="font-family: 'Montserrat', sans-serif;color: #212B5F;margin-left: 10px;"> <?= $body['customer']['name'];?></span>
                        <h6 style="display:block;font-size:12px;font-family: 'Montserrat', sans-serif;">We have received your order and will be delivered at <?= $body['customer']['address'];?> ,once its approved, You'll be notify via SMS.</h6>
                    </td>
                    <td style="font-family: 'Montserrat', sans-serif;border-top: 1px solid #cecece;border-bottom: 1px solid #cecece;"></td>
                    <td style="font-family: 'Montserrat', sans-serif;border-top: 1px solid #cecece;border-bottom: 1px solid #cecece;">
                        <img style="width: 110px;height: auto;object-fit: cover;float:right" src="<?= base_url('assets/front/homepage/logo.png');?>" alt="" class="img-bg-email">
                    </td>
                </tr>
    
                <tr style="padding: 15px 40px;">
                    <td style="font-family: 'Montserrat', sans-serif;text-transform: capitalize;font-weight: 700;font-size: 17px;color: #000;border-bottom: 1px solid #cecece;">Product</td>
                    <td style="font-family: 'Montserrat', sans-serif;text-transform: capitalize;font-weight: 700;font-size: 17px;color: #000;border-bottom: 1px solid #cecece;">Quatity</td>
                    <td style="font-family: 'Montserrat', sans-serif;text-transform: capitalize;font-weight: 700;font-size: 17px;color: #000;border-bottom: 1px solid #cecece;">Price</td>
                </tr>
            
                    <?php foreach($body['cart'] as $c):?>
                    
                        <tr style="margin:10px 0;border:1px solid #cecece;padding: 15px 40px;">
                            <td style="font-family: 'Montserrat', sans-serif;border-bottom: 1px solid #cecece;text-transform: capitalize;font-weight: 500;font-size: 15px;color: #000; overflow: hidden;text-overflow: ellipsis;white-space: nowrap;width: 70px;"><?= $c['name'];?></td>
                            <td style="font-family: 'Montserrat', sans-serif;border-bottom: 1px solid #cecece;text-transform: capitalize;font-weight: 500;font-size: 15px;color: #000;"><span><?= $c['qty'];?></span></td>
                            <td style="font-family: 'Montserrat', sans-serif;border-bottom: 1px solid #cecece;text-transform: capitalize;font-weight: 500;font-size: 15px;color: #000;">$<?= $c['subtotal'];?></td>
                        </tr>
                    
                    <?php endforeach;?>

                <!--<tr>-->
                <!--    <td style="font-size: 17px;color: #000;font-weight: 500; text-transform: capitalize;padding: 10px 20px;">You Will be notify via Email/SMS</td>-->
                <!--    <td></td>-->
                <!--    <td style="font-size: 17px;color: #000;font-weight: 600;text-transform: capitalize;padding: 10px 20px;">Total:<span></span></td>-->
                <!--</tr>-->
                <tr>
                    <td style="font-family: 'Montserrat', sans-serif;padding: 10px 20px;"></td>
                    <td style="font-family: 'Montserrat', sans-serif;padding: 10px 20px;"></td>
                    <td style="font-family: 'Montserrat', sans-serif;padding: 10px 20px;"></td>
                </tr>
                
                <tr style="background:#212B5F;padding: 35px 20px;">
                    <td style="text-transform: uppercase;font-size: 25px;font-weight: 600;color: #fff;font-family: 'Montserrat', sans-serif;">Total Cash Amount</td>
                    <td></td>
                    <td style="font-size: 24px;color: #fff;font-weight:700;font-family: 'Montserrat', sans-serif;" class="last-price">$<?= $body['customer']['cod_amount'];?></td>
                </tr>
            
        </tbody>
    </table>
    
</div>