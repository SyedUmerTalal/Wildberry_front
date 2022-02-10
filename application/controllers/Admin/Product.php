<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product extends Admin_Controller {
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
                'field' => 'category_id',
                'label' => 'Category Name',
                'rules' => 'required'
            ),
            array(
                'field' => 'product_name',
                'label' => 'Product Name',
                'rules' => 'trim|min_length[1]|max_length[300]|required'
            ),
            array(
                'field' => 'product_price',
                'label' => 'Product Price',
                'rules' => 'trim|min_length[1]|max_length[300]|required'
            ),
            array(
                'field' => 'product_desc',
                'label' => 'Product Description',
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

    public function index(){
        if($this->is_crud == false){
           redirect('admin/'.$this->table_name.'/form/edit/1');
       }

       $content['records'] = $this->db->select('*')->from('product')
       ->join('category', 'category.category_id = product.category_id')
       ->where('product_status', 'enable')
       ->get()->result();
        // echo '<pre>'; print_r($content['records']); exit;
       $content['title'] = $this->title;  
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
    $content['cat']= $this->db->select('*')->from('category')->where('category_status', 'enable')
    ->get()->result(); 
    $content['title'] = $this->title;  
    $content['record']  = $this->general->get($data);
    $content['main_content'] = $this->table_name.'/form';           
    $this->load->view('admin/inc/view',$content);   
} 
}else{              
    $data['where'] = array($this->record_id => $id); 
    $data['table'] = $this->table_name;  
    $data['output_type'] = 'row';
    $content['cat']= $this->db->select('*')->from('category')->where('category_status', 'enable')
    ->get()->result();  
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
       ->where('product_id', $id)
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


 public function manage_stock()
 {
        $data = array(
             'stock' => $this->input->post('stock'),
             );
            
         if($data)
        {
         $id = $this->input->post('product_id');
         $this->db->where('product_id', $id);
         $this->db->update('product', $data);
         
        $this->session->set_flashdata('success', 'Updated Successfully');
        redirect($_SERVER['HTTP_REFERER']);
        }
        else{
            $this->session->set_flashdata('error', 'Something went wrong');
            redirect($_SERVER['HTTP_REFERER']);
        }
 }
}