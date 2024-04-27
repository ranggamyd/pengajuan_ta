<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        if (empty($this->session->userdata('status'))) {
            redirect('auth');
        }

        $this->load->model('ajuan_model');
    }

    public function loadView($file, $data)
    {
        $this->load->view('admin/layouts/header', $data);
        $this->load->view('admin/' . $file, $data);
        $this->load->view('admin/layouts/footer', $data);
    }

    public function index()
    {
        $data['ajuan'] = $this->ajuan_model->get_ajuan();

        $data['title'] = 'Dashboard';
        $this->loadView('dashboard', $data);
    }
}

/* End of file Dashboard.php */
