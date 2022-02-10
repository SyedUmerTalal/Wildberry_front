<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Table_reservation extends Admin_Controller {
    function __construct() {
        parent::__construct(); 
        $this->table_name = $this->uri->segment(2);     
        $this->record_id = $this->uri->segment(2).'_id';     
        $this->record_status = $this->uri->segment(2).'_status';     
        $this->title = ucwords(str_replace('_', ' ', $this->uri->segment(2)));

        //To use CRUD or not. (TRUE to make CRUD enable) 
        $this->is_crud = true;

        $this->form_validations = array(
            array(
                'field' => '',
                'label' => 'First Heading',
                'rules' => 'trim|min_length[1]|max_length[300]'
            ), 
            array(
                'field' => 'homepage_second_heading',
                'label' => 'Second Heading',
                'rules' => 'trim|min_length[1]|max_length[300]'
            ),

        );

    } 

    public function index(){
        if($this->is_crud == false){
           redirect('admin/'.$this->table_name.'/form/edit/1');
       }

       $data['table'] = $this->table_name;  
       $data['output_type'] = 'result';    
       $content['title'] = $this->title;          
       $content['records']  = $this->general->get($data);
       $content['main_content'] = $this->table_name.'/list';           
       $this->load->view('admin/inc/view',$content);   
   }


   public function form($form_type="" , $id =""){
    if($this->is_crud == false){
       $id = 1;
   }
   if($_POST){
    $this->form_validation->set_rules($this->form_validations);
    if (!$this->form_validation->run() == FALSE){
        $this->input->post();

        $content = $this->input->post();

                //Image Uploding
        foreach ($this->image_fields as $image_field) {
            if($_FILES[$image_field['field_name']]['size'] > 0){
              $image = single_image_upload($_FILES[$image_field['field_name']],$image_field['path']);
              if(is_array($image)){            
                $this->session->set_flashdata('error', $image);
            }else{
                $content[$image_field['field_name']] = $image;
            }
        }  

    }

    $data['table'] = $this->table_name; 
    if($form_type == 'edit'){
        $data['where'] = array($this->record_id => $id);
        $this->general->update($data,$content); 
        $this->session->set_flashdata('success', 'Updated Successfully.');
        redirect('admin/'.$this->table_name);
    }
    else if($form_type == 'add' || $form_type == 'duplicate'){
        $this->general->insert($data,$content);                     
        $this->session->set_flashdata('success', 'Added Successfully.');
        redirect('admin/'.$this->table_name);
    }
}else{        
    $data['where'] = array($this->record_id => $id);     
    $data['table'] = $this->table_name;  
    $data['output_type'] = 'row';   
    $content['title'] = $this->title;  
    $content['record']  = $this->general->get($data);
    $content['main_content'] = $this->table_name.'/form';           
    $this->load->view('admin/inc/view',$content);   
} 
}else{              
    $data['where'] = array($this->record_id => $id); 
    $data['table'] = $this->table_name;  
    $data['output_type'] = 'row';   
    $content['title'] = $this->title;  
    $content['record']  = $this->general->get($data);
    $content['main_content'] = $this->table_name.'/form';           
    $this->load->view('admin/inc/view',$content); 
}
}

public function view($id)
{
    if($this->is_crud == true){
        $data['where'] = array($this->record_id => $id); 
        $data['table'] = $this->table_name;   
        $data['output_type'] = 'row';   
        $content['title'] = $this->title;  
        $content['record']  = $this->general->get($data);
        $content['main_content'] = $this->table_name.'/view';           
        $this->load->view('admin/inc/view',$content); 
    }
    else{
        redirect('admin/'.$this->table_name);
    }

}
public function delete($id)
{
    if($this->is_crud == true){
        $content = array(
            $this->record_status => 'disable',
        );    
        $data['where'] = array($this->record_id => $id); 
        $data['table'] = $this->table_name;  
        $this->general->update($data,$content);        
        $this->session->set_flashdata('success', 'Deleted Successfully.');
        redirect('admin/'.$this->table_name);
    }
    else{
        redirect('admin/'.$this->table_name);
    }        
} 


 public function send_remarks()
{

    $data = array(
        'admin_remarks' => $this->input->post('admin_remarks'),
        'approval' => $this->input->post('approval'),
        'table_reservation_id' => $this->input->post('table_reservation_id')
    );
    if($data){
    $id = $this->input->post('table_reservation_id');
    $this->db->where('table_reservation_id', $id);
    $this->db->update('table_reservation', $data);
    
    $user_data = $this->db->select('*')->from('table_reservation')->where('table_reservation_id', $id)->get()->row();
    $user_email = $user_data->email;
    $user_name = $user_data->name;
    $user_date = $user_data->date;
    $user_person_qty = $user_data->person_qty;
    $user_time = $user_data->time;
    
    if($data['approval'] == 'accept'){
        $this->email->from('Wildberry Cake');
        $this->email->to($user_email);
        $this->email->subject('Table Resvervation Remarks from Admin - WildBerry Cake');
        $this->email->message('Dear ' .$user_name.', Your Request for ' .$user_person_qty.' Person '. ' on ' .$user_date. ' ' .$user_time. ' has been approved <br> Remarks: '.$this->input->post('admin_remarks').' <br> Please show this email on Check In <br> Thank You - Wildberry Cake Team' );
        $this->session->set_flashdata('success', 'Send Successfully');
        $this->email->set_mailtype("html");
        $this->email->send();
        redirect('admin/'.$this->table_name);
    }
    else {
        $this->email->from('Wildberry Cake');
        $this->email->to($user_email);
        $this->email->subject('Table Resvervation Remarks from Admin - WildBerry Cake');
        $this->email->message('Dear ' .$user_name.', Your Request for ' .$user_person_qty.' Person '. ' on ' .$user_date. ' ' .$user_time. ' has been disapproved, <br> Remarks: '.$this->input->post('admin_remarks').' <br> Thank You - Wildberry Cake Team' );
        $this->session->set_flashdata('success', 'Send Successfully');
        $this->email->set_mailtype("html");
        $this->email->send();
        redirect('admin/'.$this->table_name);
    }
    
    }else{
        $this->session->set_flashdata('error', 'Something went wrong.');
        redirect('admin/'.$this->table_name);
    }
  }
 
}

