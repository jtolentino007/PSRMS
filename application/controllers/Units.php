<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Units extends CORE_Controller {
    function __construct() {
        parent::__construct('');
        $this->validate_session();
        $this->load->model(
            array(
                'Units_model',
                'Measurements_model'
            )
        );
    }

    public function index() {
        $data['_def_css_files'] = $this->load->view('template/assets/css_files', '', TRUE);
        $data['_def_js_files'] = $this->load->view('template/assets/js_files', '', TRUE);
        $data['_switcher_settings'] = $this->load->view('template/elements/switcher', '', TRUE);
        $data['_side_bar_navigation'] = $this->load->view('template/elements/side_bar_navigation', '', TRUE);
        $data['_top_navigation'] = $this->load->view('template/elements/top_navigation', '', TRUE);
        $data['title'] = 'Unit Management';

        $this->load->view('units_view', $data);
    }

    function transaction($txn = null) {
        switch ($txn) {
            case 'list-primary':
                $m_units = $this->Units_model;
                $response['data'] = $m_units->get_unit_list(null, 1);
                echo json_encode($response);
                break;

            case 'list-child-units':
                $m_measurements = $this->Measurements_model;

                $unit_id = $this->input->get('uid',TRUE);

                $response['data'] = $m_measurements->getUnits($unit_id);

                echo json_encode($response);
                break;

            case 'child':
                $m_units = $this->Units_model;
                $m_measurements = $this->Measurements_model;

                $unit_id = $this->input->get('uid',TRUE);
                $data['unit_id'] = $unit_id;
                $data['child_units'] = $m_units->get_unit_list(null,2);
                $data['measurements'] = $m_measurements->get_list(
                    'measurements.unit_id = '.$unit_id,
                    'units.unit_name, measurements.*',
                    array(
                        array('units','units.unit_id = measurements.sub_unit_id','left')
                    )
                );  

                echo $this->load->view('template/unit_conversion',$data,TRUE);
                break;

            case 'create':
                $m_units = $this->Units_model;

                $m_units->unit_name = $this->input->post('unit_name', TRUE);
                $m_units->unit_desc = $this->input->post('unit_desc', TRUE);
                $m_units->unit_type = $this->input->post('unit_type', TRUE);
                $m_units->save();

                $unit_id = $m_units->last_insert_id();

                $response['title'] = 'Success!';
                $response['stat'] = 'success';
                $response['msg'] = 'Unit information successfully created.';
                $response['row_added'] = $m_units->get_unit_list($unit_id);
                echo json_encode($response);

                break;

            case 'delete':
                $m_units=$this->Units_model;

                $unit_id=$this->input->post('unit_id',TRUE);

                $m_units->is_deleted=1;
                if($m_units->modify($unit_id)){
                    $response['title']='Success!';
                    $response['stat']='success';
                    $response['msg']='Unit information successfully deleted.';

                    echo json_encode($response);
                }

                break;

            case 'create-conversion':   
                $m_measurements = $this->Measurements_model;

                $unit_id = $this->input->post('unit_id',TRUE);
                $sub_unit_id = $this->input->post('sub_unit_id',TRUE);
                $equivalent_qty = $this->input->post('equivalent_qty',TRUE);

                $m_measurements->delete_via_fk($unit_id);

                for($i = 0; $i < count($sub_unit_id); $i++) 
                {
                    $m_measurements->unit_id = $unit_id;
                    $m_measurements->sub_unit_id = $sub_unit_id[$i];
                    $m_measurements->equivalent_qty = $this->get_numeric_value($equivalent_qty[$i]);
                    $m_measurements->save();
                }

                $response['title'] = "Success!";
                $response['stat'] = "success";
                $response['msg'] = "Unit conversions successfully saved.";

                echo json_encode($response);
                break;

            case 'update':
                $m_units=$this->Units_model;

                $unit_id=$this->input->post('unit_id',TRUE);
                $m_units->unit_name=$this->input->post('unit_name',TRUE);
                $m_units->unit_desc=$this->input->post('unit_desc',TRUE);
                $m_units->unit_type = $this->input->post('unit_type', TRUE);
                $m_units->modify($unit_id);

                $response['title']='Success!';
                $response['stat']='success';
                $response['msg']='Unit information successfully updated.';
                $response['row_updated']=$m_units->get_unit_list($unit_id);
                echo json_encode($response);

                break;
        }
    }
}
