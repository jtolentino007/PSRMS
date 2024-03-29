<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Promos extends CORE_Controller
{

    function __construct() {
        parent::__construct('');
        $this->validate_session();
        $this->load->model('Promos_model');
    }

    public function index() {
        $data['_def_css_files'] = $this->load->view('template/assets/css_files', '', TRUE);
        $data['_def_js_files'] = $this->load->view('template/assets/js_files', '', TRUE);
        $data['_switcher_settings'] = $this->load->view('template/elements/switcher', '', TRUE);
        $data['_side_bar_navigation'] = $this->load->view('template/elements/side_bar_navigation', '', TRUE);
        $data['_top_navigation'] = $this->load->view('template/elements/top_navigation', '', TRUE);
        $data['title'] = 'Promo Management';

        $this->load->view('promos_view', $data);

    }

    function transaction($txn = null) {
        switch ($txn) {
            case 'list':
                $m_promos = $this->Promos_model;
                $response['data'] = $m_promos->get_brand_list();
                echo json_encode($response);
                break;

            case 'create':
                $m_promos = $this->Promos_model;


                $m_promos->promo_name = $this->input->post('promo_name', TRUE);
                $m_promos->save();

                $promo_id = $m_promos->last_insert_id();

                $response['title'] = 'Success!';
                $response['stat'] = 'success';
                $response['msg'] = 'Promo information successfully created.';
                $response['row_added'] = $m_promos->get_brand_list($promo_id);
                echo json_encode($response);

                break;

            case 'delete':
                $m_promos=$this->Promos_model;

                $promo_id=$this->input->post('promo_id',TRUE);

                $m_promos->is_deleted=1;
                if($m_promos->modify($promo_id)){
                    $response['title']='Success!';
                    $response['stat']='success';
                    $response['msg']='brand information successfully deleted.';

                    echo json_encode($response);
                }

                break;

            case 'update':
                $m_promos=$this->Promos_model;

                $promo_id=$this->input->post('promo_id',TRUE);
                $m_promos->promo_name=$this->input->post('promo_name',TRUE);

                $m_promos->modify($promo_id);

                $response['title']='Success!';
                $response['stat']='success';
                $response['msg']='Promo information successfully updated.';
                $response['row_updated']=$m_promos->get_brand_list($promo_id);
                echo json_encode($response);

                break;
        }
    }
}
