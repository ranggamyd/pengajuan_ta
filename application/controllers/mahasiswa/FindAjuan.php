<?php
defined('BASEPATH') or exit('No direct script access allowed');

class FindAjuan extends CI_Controller
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
        $this->load->view('mahasiswa/layouts/header', $data);
        $this->load->view('mahasiswa/findAjuan/' . $file, $data);
        $this->load->view('mahasiswa/layouts/footer', $data);
    }

    public function index()
    {
        $this->db->order_by('judul', 'asc');
        // $this->db->join('ta_ajuan', 'ta_ajuan.id_ajuan = judul_final.id_ajuan', 'left');
        $data['ajuan'] = $this->db->get('judul_final')->result_array();

        $data['title'] = 'Cari Judul Ajuan';
        $this->loadView('findAjuan', $data);
    }
}

/* End of file Ajuan.php */
