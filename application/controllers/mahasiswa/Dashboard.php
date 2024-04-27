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
    }

    public function loadView($file, $data)
    {
        $this->load->view('mahasiswa/layouts/header', $data);
        $this->load->view('mahasiswa/' . $file, $data);
        $this->load->view('mahasiswa/layouts/footer', $data);
    }

    public function index()
    {
        $id = $this->session->userdata('id_mahasiswa');
        $data['id'] = $id;
        $data['mhs'] = $this->db->get_where('user_mahasiswa', ['id_mahasiswa' => $id])->row();
        $data['ajuan'] = $this->db->get_where('ta_ajuan', ['id_mahasiswa' => $id])->result_array();
        $data['total_ajuan'] = $this->db->get_where('ta_ajuan', ['id_mahasiswa' => $id])->num_rows();

        $data['title'] = 'Dashboard';
        $this->loadView('dashboard', $data);
    }
}

/* End of file Dashboard.php */
