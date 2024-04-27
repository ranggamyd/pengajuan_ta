<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Ajuan extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        if (empty($this->session->userdata('status'))) {
            redirect('auth');
        }

        $this->load->model('ajuan_model');
        $this->load->model('ujian_model');
    }

    public function loadView($file, $data)
    {
        $this->load->view('penguji/layouts/header', $data);
        $this->load->view('penguji/ajuan/' . $file, $data);
        $this->load->view('penguji/layouts/footer', $data);
    }

    public function index()
    {
        $id = $this->session->userdata('id_penguji');
        $data['id'] = $id;
        $data['penguji'] = $this->db->get_where('user_penguji', ['id_penguji' => $id])->row();

        // $this->db->join('detail_ujian', 'detail_ujian.id_mahasiswa = user_mahasiswa.id_mahasiswa');
        // $this->db->join('ta_ujian', 'ta_ujian.id_detail = detail_ujian.id_detail');
        // $this->db->group_by('user_mahasiswa.id_mahasiswa');
        // // $this->db->where('COUNT(ta_ujian.submit) <', 3);
        // // $this->db->where('detail_ujian.id_penguji', $id);
        // $this->db->where('ta_ujian.submit <', 6);
        // $data['ujian'] = $this->db->get('user_mahasiswa')->result_array();
        $data['ujian'] = $this->ujian_model->get_ujian();

        $data['title'] = 'Judul Skripsi Ajuan';
        $this->loadView('ajuan', $data);
    }

    public function submitted()
    {
        $id = $this->session->userdata('id_penguji');
        $data['id'] = $id;
        $data['penguji'] = $this->db->get_where('user_penguji', ['id_penguji' => $id])->row();

        $this->db->join('detail_ujian', 'detail_ujian.id_mahasiswa = user_mahasiswa.id_mahasiswa');
        $this->db->join('ta_ujian', 'ta_ujian.id_detail = detail_ujian.id_detail');
        $this->db->group_by('user_mahasiswa.id_mahasiswa');
        $data['ujian'] = $this->db->get_where('user_mahasiswa', ['detail_ujian.id_penguji' => $id, 'ta_ujian.submit' => 1])->result_array();

        $data['title'] = 'Judul Skripsi Ajuan';
        $this->loadView('ajuanSubmitted', $data);
    }

    public function detail($id)
    {
        $data['id'] = $id;
        $data['mhs'] = $this->db->get_where('user_mahasiswa', ['id_mahasiswa' => $id])->row();

        $this->db->select('ta_ajuan.id_ajuan, id_mahasiswa, judul_ajuan, tgl_ajuan, hasil_verifikasi, hasil_ujian, ta_ajuan.submit AS aSubmit, ta_verifikasi.submit AS vSubmit');
        $this->db->join('ta_verifikasi', 'ta_verifikasi.id_ajuan = ta_ajuan.id_ajuan', 'left');
        $data['ajuan'] = $this->db->get_where('ta_ajuan', ['id_mahasiswa' => $id, 'hasil_verifikasi' => 'diterima'])->result_array();

        $this->db->join('user_penguji', 'user_penguji.id_penguji = detail_ujian.id_penguji');
        $this->db->join('user_mahasiswa', 'user_mahasiswa.id_mahasiswa = detail_ujian.id_mahasiswa');
        $u = $this->db->get_where('detail_ujian', ['detail_ujian.id_mahasiswa' => $id]);
        if ($u->num_rows() > 0) {
            $data['ujian'] = $u->result_array();
        }

        $data['title'] = 'Detail Judul Skripsi Ajuan';
        $this->loadView('detail', $data);
    }

    public function ajuanDetail($id)
    {
        $this->db->join('user_mahasiswa', 'user_mahasiswa.id_mahasiswa = ta_ajuan.id_mahasiswa');
        $data['ajuan'] = $this->db->get_where('ta_ajuan', ['id_ajuan' => $id])->row();

        $this->db->join('user_admin', 'user_admin.id_admin = ta_verifikasi.id_admin');
        $data['verifikasi'] = $this->db->get_where('ta_verifikasi', ['id_ajuan' => $id])->row();

        $this->db->join('detail_ujian', 'detail_ujian.id_detail = ta_ujian.id_detail');
        $this->db->join('user_penguji', 'user_penguji.id_penguji = detail_ujian.id_penguji');
        $data['ujian'] = $this->db->get_where('ta_ujian', ['id_ajuan' => $id])->row();

        $data['title'] = 'Detail Judul Skripsi Ajuan';
        $this->loadView('ajuanDetail', $data);
    }
}

/* End of file Ajuan.php */
