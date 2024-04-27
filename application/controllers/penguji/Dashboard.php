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

        $this->load->model('ujian_model');
    }

    public function loadView($file, $data)
    {
        $this->load->view('penguji/layouts/header', $data);
        $this->load->view('penguji/' . $file, $data);
        $this->load->view('penguji/layouts/footer', $data);
    }

    public function index()
    {
        $id = $this->session->userdata('id_penguji');
        $data['id'] = $id;
        $data['penguji'] = $this->db->get_where('user_penguji', ['id_penguji' => $id])->row();

        $data['ujian'] = $this->ujian_model->get_ujian();

        $data['title'] = 'Dashboard';
        $this->loadView('dashboard', $data);
    }
}

/* End of file Dashboard.php */
