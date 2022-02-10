<?php 

class Checkout_cake extends Front_Controller
{
	public function __construct()
	{
		parent:: __construct();

	}

	public function index()
	{
		$content['main_content'] = 'checkout_cake';
		$this->load->view('front/inc/view',$content);			

	}
	
	public function addProduct()
	{
	   $data = array(
	   "id"  => $_POST["id"],
	   "name"  => $_POST["name"],
	   "price"  => $_POST["price"],
	   "img"  => $_POST["img"]
	   );

	  	$this->session->set_userdata('checkout_cake_data', $data);
	  	$this->session->set_flashdata('success', 'Added Successfully');
	  	// redirect('checkout_cake');
	}

	public function add()
	{
	   // for cod & pickup
	    if ($this->input->post('cod') == 'COD' || $this->input->post('pick') == 'PICKUP'){
		$content = array(
		  'name' => $this->input->post('name'),
		  'phone' => $this->input->post('phone'),
		  'email' => $this->input->post('email'),
		  'address' => $this->input->post('address'),
		  'req' => $this->input->post('req'),
		  'cod' => $this->input->post('cod'),
		  'pickup' => $this->input->post('pickup'),
		  'cod_amount' => $this->session->userdata(['checkout_cake_data']['price']),
		  'cake_id' => $this->session->userdata(['checkout_cake_data']['id']),
		);

		
		$this->session->set_userdata('checkout_cake_cust', $content);
		$data['table'] = 'checkout_cake';
		$order_data = $this->general->insert($data, $content);
		if($order_data){
		    
            $customer_email = $this->input->post('email');
		    $email_data['cart'] = $this->session->userdata('checkout_cake_data');
		    $email_data['customer'] = $this->session->userdata('checkout_cake_cust');
		    $section['subject'] = 'Wildberry Cake - Cake Order Details';
            $section['body'] = $email_data;
            $body = $this->load->view('front/email/customer_cake_cod',$section, TRUE);
            send_email($customer_email, 'Wildberry Cake - Cake Order Details', $body, '');
		    
		    
            // email to admin
            $this->email->to('adnan@oip.com.pk');
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
		  'cake_id' => $this->session->userdata(['checkout_cake_data']['id']),
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