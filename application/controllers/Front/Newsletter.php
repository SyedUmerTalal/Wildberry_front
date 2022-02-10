<?php 

class Newsletter extends Front_Controller
{
	public function __construct()
	{
		parent:: __construct();
	}


	public function subscribe()
	{
	    $this->form_validation->set_rules('email', 'Email', 'is_unique[newsletter.email]');
	    if($this->form_validation->run()== TRUE){
	    $content = array(
	        'email' => $this->input->post('email')
	    );
	    
        $data['table'] = 'newsletter';
		$query =$this->general->insert($data,$content);
	       if($query){
            $this->session->set_flashdata('success', 'Subscribed Successfully');
            $this->email->send();
    		redirect();
        }else{
            $this->session->set_flashdata('error', 'Something went wrong.');
    		redirect();
      }
	 } else {
	        $this->session->set_flashdata('error', 'Email alredy existed');
    		redirect();
	 }
 			     
	}
	

}


?>