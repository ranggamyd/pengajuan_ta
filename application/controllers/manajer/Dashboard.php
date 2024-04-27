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

        $this->load->model('report_model');
    }

    public function loadView($file, $data)
    {
        $this->load->view('manajer/layouts/header', $data);
        $this->load->view('manajer/' . $file, $data);
        $this->load->view('manajer/layouts/footer', $data);
    }

    public function index()
    {
        $data['tested'] = $this->report_model->get_tested();

        $data['title'] = 'Dashboard';
        $this->loadView('dashboard', $data);
    }
}

/* End of file Dashboard.php */
