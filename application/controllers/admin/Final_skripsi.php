<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Final_skripsi extends CI_Controller
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
        $this->load->view('admin/layouts/header', $data);
        $this->load->view('admin/final/' . $file, $data);
        $this->load->view('admin/layouts/footer', $data);
    }

    public function index()
    {
        //     $this->db->join('detail_ujian', 'detail_ujian.id_mahasiswa = user_mahasiswa.id_mahasiswa');
        //     $this->db->join('ta_ujian', 'ta_ujian.id_detail = detail_ujian.id_detail');
        //     $this->db->group_by('user_mahasiswa.id_mahasiswa');
        $this->db->order_by('prodi', 'ASC');
        $this->db->order_by('kelas', 'ASC');
        $this->db->order_by('nama_mahasiswa', 'ASC');
        $data['final'] = $this->db->get('judul_final')->result_array();

        $data['title'] = 'Judul Skripsi Final';
        $this->loadView('final', $data);
    }
}

/* End of file ujian.php */
