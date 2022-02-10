<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Category extends Admin_Controller {
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
                'field' => 'category_name',
                'label' => 'Category Name',
                'rules' => 'trim|min_length[1]|max_length[300]|required'
            ),
            array(
                'field' => 'feature',
                'label' => 'Feature',
                'rules' => 'trim|min_length[1]|max_length[300]|required'
            )
        );

        $this->image_fields = array(
            array(
                'field_name' => 'category_image',
                'path' => './uploads/category'
            ),
        );
        
        $this->video_fields = array(
            array(
                'field_name' => 'category_video',
                'path' => './uploads/category'
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
        unset($content['meal_time_id']);

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
        $last_edited_id = $id; 
        if($last_edited_id){
        $this->db->where('category_id', $last_edited_id)->delete('meal_time_bridge');
        $meal_time_id = $this->input->post('meal_time_id');
       
        foreach($meal_time_id as $meal_id) {

        $data = array(
            'category_id' => $last_edited_id,
            'meal_time_id' => $meal_id,
        );    
        $this->db->insert('meal_time_bridge', $data);
        }
        }  

        $this->session->set_flashdata('success', 'Updated Successfully.');
        redirect('admin/'.$this->table_name);
    }
    else if($form_type == 'add' || $form_type == 'duplicate'){
        $last_id = $this->general->insert($data,$content);  
        if($last_id){
        $meal_time_id = $this->input->post('meal_time_id');
        foreach($meal_time_id as $meal_id) {
        $data = array(
            'category_id' => $last_id,
            'meal_time_id' => $meal_id,
        );    
        $this->db->insert('meal_time_bridge', $data);
    }
        }           
        $this->session->set_flashdata('success', 'Added Successfully.');
        redirect('admin/'.$this->table_name);
    }
}else{        
    $data['where'] = array($this->record_id => $id); 
    if($id){
    $content['record'] = $this->db->query("SELECT *, GROUP_CONCAT(mb.meal_time_id) AS mb_id FROM category AS c JOIN meal_time_bridge AS mb ON mb.category_id = c.category_id JOIN meal_time AS ml on ml.meal_time_id = mb.meal_time_id WHERE c.category_id = '$id' GROUP BY c.category_id")->row();
    $content['mb_id'] = explode(",",$content['record']->mb_id);
    $content['title'] = $this->title;  
    $content['meal_time'] = $this->db->select('*')->from('meal_time')->get()->result();
    $content['main_content'] = $this->table_name.'/form';           
    $this->load->view('admin/inc/view',$content); 
} else{
    $data['where'] = array($this->record_id => $id); 
    $data['table'] = $this->table_name;  
    $data['output_type'] = 'row';   
    $content['title'] = $this->title;  
    $content['record']  = $this->general->get($data);
    $content['meal_time'] = $this->db->select('*')->from('meal_time')->get()->result();
    $content['main_content'] = $this->table_name.'/form';           
    $this->load->view('admin/inc/view',$content); 
 }
} 
}else{              
   $data['where'] = array($this->record_id => $id); 
    if($id){
      $content['record'] = $this->db->query("SELECT *, GROUP_CONCAT(mb.meal_time_id) AS mb_id FROM category AS c JOIN meal_time_bridge AS mb ON mb.category_id = c.category_id JOIN meal_time AS ml on ml.meal_time_id = mb.meal_time_id WHERE c.category_id = '$id' GROUP BY c.category_id")->row();
    $content['mb_id'] = explode(",",$content['record']->mb_id);
    $content['title'] = $this->title;  
    $content['meal_time'] = $this->db->select('*')->from('meal_time')->get()->result();
    $content['main_content'] = $this->table_name.'/form';           
    $this->load->view('admin/inc/view',$content); 
} else{
    $data['where'] = array($this->record_id => $id); 
    $data['table'] = $this->table_name;  
    $data['output_type'] = 'row';   
    $content['title'] = $this->title;  
    $content['record']  = $this->general->get($data);
    $content['meal_time'] = $this->db->select('*')->from('meal_time')->get()->result();
    $content['main_content'] = $this->table_name.'/form';           
    $this->load->view('admin/inc/view',$content); 
 } 
}
}

public function view($id)
{
    if($this->is_crud == true){
        $data['where'] = array($this->record_id => $id); 
        $data['table'] = $this->table_name;   
        
        $content['record'] = $this->db->query("SELECT *, GROUP_CONCAT(ml.meal_time_name) AS mb_name FROM category AS c 
            JOIN meal_time_bridge AS mb ON mb.category_id = c.category_id 
            JOIN meal_time AS ml on ml.meal_time_id = mb.meal_time_id
            WHERE c.category_id = '$id' GROUP BY c.category_id")->row();
        $content['title'] = $this->title;  
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
}