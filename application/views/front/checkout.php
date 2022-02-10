    <div class="cart-section checkout-section">
        <div class="container-1730">
            <h1 class="inner-main-head">Checkout</h1>
            <div class="row checkout-row">
                <div class="col-lg-6">
                    <form class="cheakout-form" action="<?= base_url('checkout/add');?>" method="post">
                        <div class="form-group checbox-zb">
                            <label for="html">Cash On Delivery</label><br>
                            <input type="radio" class="form-control" placeholder="Full Name" name="cod" value="COD">
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
         <button id="proceed-status"  class="second-menu-btn"><span>PROCEED TO PAY</span></button>





    </div>
    </form>
    
    
    
    <div class="container-1730">
        <h1 class="location-head">Your Current Location</h1>
        <p id="user_location"></p>
    </div>
    
    <script>
        window.onload = function() {
           getLocation();
        };
        
         var x = document.getElementById("user_location");
        function getLocation() {
          if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(showPosition);
          } else { 
            x.innerHTML = "Geolocation is not supported by this browser.";
          }
        }
        
        function showPosition(position) {
        //   x.innerHTML = "Latitude: " + position.coords.latitude + 
        //   "<br>Longitude: " + position.coords.longitude;
          
         let s = window.document.createElement("iframe");
            s.width = 300; 
            s.height = 170; 
            s.frameborder = 0; 
            s.marginheight = 0; 
            s.marginwidth = 0; 
            s.src = `https://maps.google.com/maps?q=${position.coords.latitude},${position.coords.longitude}&hl=es&z=14&amp&output=embed`; 
            
            window.document.body.appendChild(s);
            document.getElementById("ifrm").appendChild(s);
            
            checkOrderStatus(position.coords.latitude,position.coords.longitude);
 
    }
    

        var OrderStatus = true;
		function checkOrderStatus(lat,lng){
		        $.ajax({
		            type: "POST",
		            url: '<?= base_url().'/checkout/get_location';?>',
		            data: {lat: lat, lng: lng},
		            success: function(response)
		            {
		                if(JSON.parse((response)).res == true){
		                    OrderStatus = true;
		                }else{
		                 OrderStatus = false;
		                  alert(" This service is not available in your area.")
		                 $('#proceed-status').prop('disabled', true);
		                 
		                }
				}
		    });
	    }
	    
	    
	
        
        

        
    </script>

    <div id="ifrm"></div>

    </div>
