<?php 

class Checkout extends Front_Controller
{
	public function __construct()
	{
		parent:: __construct();

	}

	public function index()
	{
		$content['main_content'] = 'checkout';
		$this->load->view('front/inc/view',$content);			

	}
	
	
	public function get_location()
	{   
	    $lat = ($_POST['lat'])?$_POST['lat']:'';
	    $lng = ($_POST['lng'])?$_POST['lng']:'';
	    
	    
	    $res  = $this->db->query('SELECT map_radius FROM  settings')->result();
	    $map_radius =  ($res[0]->map_radius)?$res[0]->map_radius:10;
	    
	    
	     
	    $data = $this->db->query('SELECT map_radius, distance FROM (SELECT *,
        (
            (
                (
                    acos(
                        sin(( '.$lat.' * pi() / 180))
                        *
                        sin(( lat * pi() / 180)) + cos(( '.$lat.' * pi() /180 ))
                        *
                        cos(( lat * pi() / 180)) * cos((( '.$lng.' - lng ) * pi()/180)))
                ) * 180/pi()
            ) * 60 * 1.1515 * 1.609344
        )
        as distance FROM settings
        ) settings LIMIT 1
        ')->result();
        
        
        $status = true;
        if($data[0]->distance <= $map_radius ){
            $status =true;
        }else{
            $status = false;
        }
        
        
	     echo json_encode(array("res"=>$status));
	     
        
        
        
        
        
	}

	public function add()
	{
	   // for cod
	    if ($this->input->post('cod') == 'COD'){
		$content = array(
		  'name' => $this->input->post('name'),
		  'phone' => $this->input->post('phone'),
		  'email' => $this->input->post('email'),
		  'address' => $this->input->post('address'),
		  'req' => $this->input->post('req'),
		  'cod' => $this->input->post('cod'),
		  'cod_amount' => $this->cart->total(),
		);

		
		$this->session->set_userdata('checkout_data', $content);
		$data['table'] = 'checkout';
		$order_data = $this->general->insert($data, $content);
		if($order_data){
		    
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
				'checkout_id' => $order_data,
				'order_items_id' => $d,
			);
			$this->db->insert('order_bridge', $order_bridge);
			$order_bridge_id = $this->db->insert_id();
			}
		    
            $customer_email = $this->input->post('email');
		    $email_data['cart'] = $this->cart->contents();
		    $email_data['customer'] = $this->session->userdata('checkout_data');
		    $section['subject'] = 'Wildberry Cake - COD Order Details';
            $section['body'] = $email_data;
            $body = $this->load->view('front/email/customer_cod',$section, TRUE);
            send_email($customer_email, 'Wildberry Cake - COD Order Details', $body, '');
		    
		    
            // email to admin
            $this->email->to('hello@wildberrycake.com');
            $this->email->from($customer_email);
            $this->email->subject('Wildberry Cake - New Order from - '.$this->input->post('name'));
            $this->email->message('You have a new Cash On Delivery order from ther user: '.$this->input->post('name').' below are the details: <br>  Total Cash Amount: '.$this->cart->total().'<br> Special Request: '.$this->input->post('req').' <br> Customer  Address: '.$this->input->post('address'));
            $this->email->set_mailtype("html");
            $this->email->send();
            
 			redirect('invoice');
		}
		else{
			$this->session->set_flashdata('error', 'Something went wrong.');
			redirect($_SERVER['HTTP_REFERER']);
		}
		
	}
	 
// 	 for online payment
	else {
	    $data = array(
		  'name' => $this->input->post('name'),
		  'phone' => $this->input->post('phone'),
		  'email' => $this->input->post('email'),
		  'address' => $this->input->post('address'),
		  'req' => $this->input->post('req'),
		  'cod' => 'Online',
		  'cod_amount' => 'Online Paid',
		);

		
		$this->session->set_userdata('checkout_data', $data);
		if($data){	
			redirect('pay');
		}
		else{
			$this->session->set_flashdata('error', 'Something went wrong.');
			redirect($_SERVER['HTTP_REFERER']);
		}
	}
}
}


?>