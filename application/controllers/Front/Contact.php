<?php 

class Contact extends Front_Controller
{
	public function __construct()
	{
		parent:: __construct();

	}

	public function index()
	{
		$this->load->view('front/contact');
			

	}
	public function contact_us()
	{
	   // print_r($_POST);exit();
	    $content = array(
	        'full_name' => $this->input->post('full_name'),
	        'email' => $this->input->post('email'),
	        'phone' => $this->input->post('phone'),
	        'subject' => $this->input->post('subject'),
	        'message' => $this->input->post('message'),
	        );	
	        $data['table'] = 'contact';
			$query = $this->general->insert($data,$content);
			$this->email->from($this->input->post('email'));
                    $this->email->to('hello@wildberrycake.com');
                    $this->email->subject('Contact Query WildBerry from - '.$this->input->post('full_name'));
                    $this->email->message('Phone: '.$this->input->post('phone').'<br>  Message: '.$this->input->post('message'));
                    $this->email->set_mailtype("html");
			if($query){
                    $this->session->set_flashdata('msg','1');
                    $this->session->set_flashdata('success', 'Submitted Successfully');
                    $this->email->send();
            		redirect('contact');
                }else{
                    $this->session->set_flashdata('msg', '2');
                    $this->session->set_flashdata('error', 'Something went wrong.');
            		redirect('contact');
        }
 			     
	}

}


?>