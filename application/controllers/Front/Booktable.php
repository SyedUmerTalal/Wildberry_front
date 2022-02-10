<?php 

class Booktable extends Front_Controller
{
	public function __construct()
	{
		parent:: __construct();
	}

	public function index()
	{
		$content['main_content'] = 'book-a-table';
		$this->load->view('front/inc/view',$content);
	}
	public function add_booking()
	{
	    
	    $content = array(
	        'name' => $this->input->post('name'),
	        'email' => $this->input->post('email'),
	        'phone' => $this->input->post('phone'),
	        'date' => $this->input->post('date'),
	        'time' => $this->input->post('time'),
	        'special_req' => $this->input->post('special_req'),
	        'person_qty' => $this->input->post('person_qty'),
	        );	
	        $data['table'] = 'table_reservation';
			$query =$this->general->insert($data,$content);
			        $this->email->from($this->input->post('email'));
                    $this->email->to('hello@wildberrycake.com');
                    $this->email->subject('Table Reservation Request from ' .$this->input->post('name'). ' - WildBerry');
                    $this->email->message('Table Resvervation Request from ' .$this->input->post('name').' for ' .$this->input->post('person_qty').' Persons '. ' at ' .$this->input->post('date'). ' ' .$this->input->post('time'). ' ' );
			if($query){
                    // $this->session->set_flashdata('msg','1');
                    $this->session->set_flashdata('success', 'Submitted Successfully');
                    $this->email->send();
            		redirect('booktable');
                }else{
                    // $this->session->set_flashdata('msg', '2');
                    $this->session->set_flashdata('error', 'Something went wrong.');
            		redirect('booktable');
        }
 			     
	}

}


?>