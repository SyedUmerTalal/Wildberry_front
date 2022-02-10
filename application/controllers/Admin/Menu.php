<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Menu extends Admin_Controller {
    
    function __construct() 
    {
        parent::__construct(); 
        $this->table_name = 'menu_category';     
        $this->record_id = $this->uri->segment(2).'_id';     
        $this->record_status = $this->uri->segment(2).'_status';     
        $this->title = ucwords(str_replace('_', ' ', $this->uri->segment(2)));

        //To use CRUD or not. (TRUE to make CRUD enable) 
        $this->is_crud = true;

        $this->form_validations = array(
            array(
                'field' => 'category_id',
                'label' => 'Category Name',
                'rules' => 'required'
            ),
            array(
                'field' => 'menu_category_name',
                'label' => 'Menu Name',
                'rules' => 'trim|min_length[1]|max_length[300]|required'
            ),
        );

        $this->image_fields = array(
             array(
                 'field_name' => 'product_image',
                 'path' => './uploads/product'
             ),
        );

    } 

    public function index()
    {

       $content['records'] = $this->db->select('*')->from('menu_category')
       ->get()->result();

       $content['title'] = $this->title;  
       $content['main_content'] = $this->table_name.'/list';           
       $this->load->view('admin/inc/view',$content);   
   }

    
    public function create()
    {
        $data['table'] = $this->table_name;  
        $content['title'] = $this->title;  
        $content['record']  = $this->general->get($data);
        $content['main_content'] = $this->table_name.'/create';           
        $this->load->view('admin/inc/view',$content); 
    }
    
    public function edit()
    {
        $data['table'] = $this->table_name;  
        $content['title'] = $this->title;  
        $content['record']  = $this->general->get($data);
        $content['main_content'] = $this->table_name.'/edit';           
        $this->load->view('admin/inc/view',$content); 
    }
    
    public function save()
    {
        if($_POST){

            $this->form_validation->set_rules($this->form_validations);
            if (!$this->form_validation->run() == FALSE){
                
                $this->input->post();
                $content = $this->input->post();
                
                //Image Uploding
                if(!empty($_FILES['menu_category_thumbnail'])):
                    foreach ($this->image_fields as $image_field) {
                        if($_FILES['menu_category_thumbnail']['size'] > 0) 
                        {
                          $image = single_image_upload($_FILES['menu_category_thumbnail'],$image_field['path']);
                            if(is_array($image)) {            
                                $this->session->set_flashdata('error', $image);
                                redirect('admin/'.$this->table_name.'/create');
                            } else {
                                $content['menu_category_thumbnail'] = $image;
                            }
                        }  
                    }
                endif;
                
                $data['table'] = $this->table_name; 
                
                $this->general->insert($data,$content);                     
                $this->session->set_flashdata('success', 'Added Successfully.');
                redirect('admin/Menu/index');
            } 
            else
            {
                $errors = $this->form_validation->error_array();
                foreach($errors as $err) {
                    $this->session->set_flashdata('error', $err);
                }
                redirect('admin/Menu/create');
            }
        }
    }
    
    public function update($id)
    {
        if($_POST){

            $this->form_validation->set_rules($this->form_validations);
            if (!$this->form_validation->run() == FALSE){
                
                $this->input->post();
                $content = $this->input->post();
                
                //Image Uploding
                if(!empty($_FILES['menu_category_thumbnail'])):
                    foreach ($this->image_fields as $image_field) {
                        if($_FILES['menu_category_thumbnail']['size'] > 0) 
                        {
                          $image = single_image_upload($_FILES['menu_category_thumbnail'],$image_field['path']);
                            if(is_array($image)) {            
                                $this->session->set_flashdata('error', $image);
                                redirect('admin/'.$this->table_name.'/create');
                            } else {
                                $content['menu_category_thumbnail'] = $image;
                            }
                        }  
                    }
                endif;
                
                $data['table'] = $this->table_name; 
                
                $data['where'] = array($this->record_id => $id);
                $this->general->update($data,$content); 
                $this->session->set_flashdata('success', 'Updated Successfully.');
                redirect('admin/Menu/index');
            } 
            else
            {
                $errors = $this->form_validation->error_array();
                foreach($errors as $err) {
                    $this->session->set_flashdata('error', $err);
                }
                redirect('admin/Menu/create');
            }
        }
    }

   public function form($form_type="" , $id ="")
   {
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
                            // VIDEO UPLOADING
                 foreach ($this->video_fields as $video_field) {
                        if($_FILES[$video_field['field_name']]['size'] > 0){
                          $video = single_video_upload($_FILES[$video_field['field_name']],$video_field['path']);
                          if(is_array($video)){            
                            $this->session->set_flashdata('error', $video);
                        }else{
                            $content[$video_field['field_name']] = $video;
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
                $content['cat'] = $this->db->select('*')->from('category')->get()->result(); 
                $content['title'] = $this->title;  
                $content['record']  = $this->general->get($data);
                $content['main_content'] = $this->table_name.'/form';           
                $this->load->view('admin/inc/view',$content);   
            } 
            }else{              
                $data['where'] = array($this->record_id => $id); 
                $data['table'] = $this->table_name;  
                $data['output_type'] = 'row';
                $content['cat'] = $this->db->select('*')->from('category')->get()->result();  
                $content['title'] = $this->title;  
                $content['record']  = $this->general->get($data);
                $content['main_content'] = $this->table_name.'/form';           
                $this->load->view('admin/inc/view',$content); 
            }
    }

    public function view($id)
    {
        if($this->is_crud == true){
    
            $content['record'] = $this->db->select('*')->from('product')
           ->join('category', 'category.category_id = product.category_id')
           ->get()->row();
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