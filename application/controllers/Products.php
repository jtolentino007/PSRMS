<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Products extends CORE_Controller
{

    function __construct() {
        parent::__construct('');
        $this->validate_session();
        $this->load->model('Products_model');
        $this->load->model('Categories_model');
        $this->load->model('Units_model');
		$this->load->model('Inventory_model');
		$this->load->model('Brands_model');
		$this->load->model('Vendors_model');
        $this->load->model('Recipes_model');
        $this->load->model('Ingredients_categories_model');
    }

    public function index() {
        $data['product_code'] = $this->Products_model->getCode();
        $data['product_cat'] = $this->Categories_model->get_list(array('categories.is_active'=>TRUE,'categories.is_deleted'=>FALSE));
        $data['product_brand'] = $this->Brands_model->get_list(array('brands.is_active'=>TRUE,'brands.is_deleted'=>FALSE));
        $data['product_dept'] = $this->Products_model->getDepartment();
        $data['product_unit'] = $this->Units_model->get_list(array('units.is_active'=>TRUE,'units.is_deleted'=>FALSE));
        $data['product_vendor'] = $this->Vendors_model->get_list(null,'vendor_id,vendor_name');
        $data['categories'] = $this->Ingredients_categories_model->get_list('is_deleted=FALSE');
        $data['units_list'] = $this->Units_model->get_list(array('units.is_active'=>TRUE,'units.is_deleted'=>FALSE));
        $data['_def_css_files'] = $this->load->view('template/assets/css_files', '', TRUE);
        $data['_def_js_files'] = $this->load->view('template/assets/js_files', '', TRUE);
        $data['_switcher_settings'] = $this->load->view('template/elements/switcher', '', TRUE);
        $data['_side_bar_navigation'] = $this->load->view('template/elements/side_bar_navigation', '', TRUE);
        $data['_top_navigation'] = $this->load->view('template/elements/top_navigation', '', TRUE);
        $data['title'] = 'Menu Management';

        $this->load->view('products_view', $data);
    }

    function transaction($txn = null) {
        switch ($txn) {
            case 'list':
                $m_products = $this->Products_model;
                $response['data']=$this->response_rows(array('products.is_deleted'=>FALSE));
                echo json_encode($response);
                break;

            case 'add-product-ingredients':
                $m_recipe = $this->Recipes_model;

                $product_id = $this->input->post('product_id',TRUE);
                $ingredient_id = $this->input->post('ingredient_id',TRUE);
                $qty_per_order = $this->input->post('ingredient_amount',TRUE);
                $ingredient_unit_id = $this->input->post('ingredient_unit_id',TRUE);
                $base_price = $this->input->post('base_price',TRUE);
                $cost = $this->input->post('cost',TRUE);

                $m_recipe->delete_via_fk($product_id);

                for($i=0;$i<count($ingredient_id);$i++)
                {
                    $m_recipe->product_id = $product_id;
                    $m_recipe->ingredient_id = $ingredient_id[$i];
                    $m_recipe->qty_per_order = $this->get_numeric_value($qty_per_order[$i]);
                    $m_recipe->ingredient_unit_id = $ingredient_unit_id[$i];
                    $m_recipe->base_price = $this->get_numeric_value($base_price[$i]);
                    $m_recipe->cost = $this->get_numeric_value($cost[$i]);
                    $m_recipe->save();
                }

                $response['title'] = "Notification";
                $response['stat'] = "success";
                $response['msg'] = "Recipes successfully saved.";

                echo json_encode($response);
                break;

            case 'create':
                $m_products = $this->Products_model;
                
                $m_products->supplier_id = $this->input->post('supplier', TRUE);
                $m_products->product_code = $this->input->post('product_code', TRUE);
                $m_products->product_desc = $this->input->post('product_desc', TRUE);
                $m_products->inventory_type = $this->input->post('inventory', TRUE);
                $m_products->category_id = $this->input->post('category_id', TRUE);
                $m_products->brand_id = $this->input->post('brand_id', TRUE);
                $m_products->unit_id = $this->input->post('unit_id', TRUE);
                $m_products->vendor_id = $this->input->post('vendor_id', TRUE);
                $m_products->markup_percent = $this->input->post('markup_percent', TRUE);
                $m_products->minstock_order = $this->input->post('minstock_order', TRUE);
                $m_products->maxstock_order = $this->input->post('maxstock_order', TRUE);
                $m_products->img_path = $this->input->post('img_path', TRUE);
				$m_products->sale_cost =$this->get_numeric_value($this->input->post('sale_cost', TRUE));
				$m_products->quantity =$this->get_numeric_value($this->input->post('quantity', TRUE));
                $m_products->purchase_cost =$this->get_numeric_value($this->input->post('purchase_cost', TRUE));
				$m_products->tax_rate =$this->get_numeric_value($this->input->post('tax_rate', TRUE));

                $m_products->save();

                $product_id = $m_products->last_insert_id();

                $response['title'] = 'Success!';
                $response['stat'] = 'success';
                $response['msg'] = 'Product information successfully created.';

                $response['row_added'] = $m_products->getProductInventoryInfo($product_id);
                echo json_encode($response);

                break;

            case 'delete':
                $m_products=$this->Products_model;

                $product_id=$this->input->post('product_id',TRUE);

                $m_products->is_deleted=1;
                if($m_products->modify($product_id)){
                    $response['title']='Success!';
                    $response['stat']='success';
                    $response['msg']='Product information successfully deleted.';

                    echo json_encode($response);
                }

                break;

            case 'update':
                $m_products=$this->Products_model;

                $product_id=$this->input->post('product_id',TRUE);
                $m_products->product_code = $this->input->post('product_code', TRUE);
                $m_products->product_desc = $this->input->post('product_desc', TRUE);

                $m_products->category_id = $this->input->post('category_id', TRUE);
                $m_products->brand_id = $this->input->post('brand_id', TRUE);
                $m_products->unit_id = $this->input->post('unit_id', TRUE);
                $m_products->vendor_id = $this->input->post('vendor_id', TRUE);
                $m_products->markup_percent = $this->input->post('markup_percent', TRUE);
                $m_products->minstock_order = $this->input->post('minstock_order', TRUE);
                $m_products->maxstock_order = $this->input->post('maxstock_order', TRUE);
                $m_products->img_path = $this->input->post('img_path', TRUE);
				$m_products->sale_cost =$this->get_numeric_value($this->input->post('sale_cost', TRUE));
				$m_products->quantity =$this->get_numeric_value($this->input->post('quantity', TRUE));
                $m_products->purchase_cost =$this->get_numeric_value($this->input->post('purchase_cost', TRUE));
				$m_products->tax_rate =$this->get_numeric_value($this->input->post('tax_rate', TRUE));
                $m_products->supplier_id = $this->input->post('supplier', TRUE);

                $m_products->modify($product_id);

                $response['title']='Success!';
                $response['stat']='success';
                $response['msg']='Product information successfully updated.';
                $response['row_updated'] = $m_products->getProductInventoryInfo($product_id);
                echo json_encode($response);

                break;

            case 'upload':
                $allowed = array('png', 'jpg', 'jpeg','bmp');

                $data=array();
                $files=array();
                $directory='assets/img/products/';


                foreach($_FILES as $file){

                    $server_file_name=uniqid('');
                    $extension = pathinfo($file['name'], PATHINFO_EXTENSION);
                    $file_path=$directory.$server_file_name.'.'.$extension;
                    $orig_file_name=$file['name'];

                    if(!in_array(strtolower($extension), $allowed)){
                        $response['title']='Invalid!';
                        $response['stat']='error';
                        $response['msg']='Image is invalid. Please select a valid photo!';
                        die(json_encode($response));
                    }

                    if(move_uploaded_file($file['tmp_name'],$file_path)){
                        $response['title']='Success!';
                        $response['stat']='success';
                        $response['msg']='Image successfully uploaded.';
                        $response['path']=$file_path;
                        echo json_encode($response);
                    }

                }
                break;
        }
    }

    function response_rows($filter){
        return $this->Products_model->get_list(
            $filter,
            'products.*,categories.category_name,units.unit_name,brands.brand_name,vendors.vendor_name',
            array(
                array('categories','categories.category_id=products.category_id','left'),
                array('units','units.unit_id=products.unit_id','left'),
				array('brands','brands.brand_id=products.brand_id','left'),
				array('vendors','vendors.vendor_id=products.vendor_id','left')
            )
        );
    }







}
