<?php

class Cake extends Front_Controller {

	public function index()
	{
	    $content['cake'] = $this->db->select('*')->from('cake')->get()->result();
    	$content['main_content'] = 'cake';
		$this->load->view('front/inc/view',$content);		
	}
	
	
	public function custom_order()
	{
	    $data = array(
	    'name' => $this->input->post('name'),
	    'email' => $this->input->post('email'),
	    'phone' => $this->input->post('phone'),
	    'msg' => $this->input->post('msg'),
	    );
	    
         $image_field = array(
                'field_name' => 'image',
                'path' => './uploads/custom_order'
            
        );
        if($_FILES[$image_field['field_name']]['size'] > 0){
              $image = single_image_upload($_FILES[$image_field['field_name']],$image_field['path']);
              if(is_array($image)){            
                $this->session->set_flashdata('error', $image);
            }else{
                $data[$image_field['field_name']] = $image;
            }
        }   
        $res = $this->db->insert('custom_order', $data);
        if($res){
                
                $this->session->set_flashdata('success', 'Submitted Successfully');
        		redirect('cake');
            }else{
                $this->session->set_flashdata('error', 'Something went wrong.');
        		redirect('cake');
    }
	}
}

?>