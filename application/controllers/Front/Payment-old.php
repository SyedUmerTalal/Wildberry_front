<?php 

class Payment extends Front_Controller
{
	public function __construct()
	{
		parent:: __construct();
		require_once('vendor/autoload.php');  

	}

	public function index()
	{	
		$this->load->view('front/pay');	

	}
	
	
	
	public function payment()
	{
	   // Adnan's sandbox keys
		 $card_name = $this->input->post('card_name');
		 $card_number = $this->input->post('card_number');
		 $month = $this->input->post('month');
		 $year = $this->input->post('year');
		 $cvv = $this->input->post('cvv');
		 $total_amount_cents = $this->input->post('total_amount');
		
	    $apiAccessKey = "fc5ac3f48eef7f6d258ed6cb808cd9a3";
	    $bearerToken = "Bearer f68c5108-f7b1-bbb8-00d0-38f94347a912";
	    
	    $client = new \GuzzleHttp\Client();
        $response = $client->request('POST', 'https://token-sandbox.dev.clover.com/v1/tokens', [
          'body' => '{"card":{"number":"'.$card_number.'","exp_month":"'.$month.'","exp_year":"'.$year.'","cvv":"'.$cvv.'","name":"'.$card_name.'"}}',
          'headers' => [
            'Accept' => 'application/json',
            'Content-Type' => 'application/json',
            'apikey' => $apiAccessKey,
          ],
        ]);
        
        $card_data = json_decode($response->getBody());
        
        if($card_data)
        {
            $source_key = $card_data->id; 
            $client = new \GuzzleHttp\Client();
            $total_amount_dollar = $total_amount_cents * 100;
            $response = $client->request('POST', 'https://scl-sandbox.dev.clover.com/v1/charges', [
              'body' => '{"ecomind":"ecom","amount":"'.$total_amount_dollar.'", "currency":"usd", "source":"'.$source_key.'"}',
              'headers' => [
                'Accept' => 'application/json',
                'Authorization' => $bearerToken,
                'Content-Type' => 'application/json',
              ],
            ]);
            
            $payment_data = json_decode($response->getBody());
            
            if($payment_data)
            {
                $content = array(
        		 'card_name' => $this->input->post('card_name'),
        		 'card_number' => $this->input->post('card_number'),
        		 'month' => $this->input->post('month'),
        		 'year' => $this->input->post('year'),
        		 'total_amount' => $this->input->post('total_amount'),
        		);
        		$data['table'] = 'payment';
        		$payment_data = $this->general->insert($data, $content);
        		
        		//email and sms
        		
        	if($payment_data)
	        {	
	            
    			$data = array(
    				'name' => $this->session->userdata['checkout_data']['name'],
    				'email' => $this->session->userdata['checkout_data']['email'],
    				'phone' => $this->session->userdata['checkout_data']['phone'],
    				'req' => $this->session->userdata['checkout_data']['req'],
    				'address' => $this->session->userdata['checkout_data']['address'],
    				'payment_id' => $payment_data
    			);
    			$this->db->insert('checkout', $data);	
    			$checkout_data_id = $this->db->insert_id();
    
    			if($checkout_data_id)
    			{
    				foreach($this->cart->contents() as $d){
    				$order_items = array(
    					'product_id' => $d['id'],
    					'qty' => $d['qty'],
    					'sub_total' => $d['subtotal'],
    				);
    				$this->db->insert('order_items', $order_items);
    				$order_items_id[] =$this->db->insert_id();
    				}
    
    				foreach($order_items_id as $d){
    					$order_bridge = array(
    					'checkout_id' => $checkout_data_id,
    					'order_items_id' => $d,
    				);
    				$this->db->insert('order_bridge', $order_bridge);
    				$order_bridge_id = $this->db->insert_id();
    				}
    
    				$this->cart->destroy();
    				$this->session->unset_userdata('checkout_data');
    				$this->session->set_flashdata('success', 'Order Placed Successfully');
    				redirect();
    			}
    			else{
    				$this->session->set_flashdata('error', 'Something went wrong.');
    				redirect($_SERVER['HTTP_REFERER']);
    			}
    		}
    		else {
    				$this->session->set_flashdata('error', 'Something went wrong.');
    				redirect('cart');
    		}
            }
        }
	        
	}

}


?>