<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Ujian extends CI_Controller
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
        $this->load->view('penguji/ujian/' . $file, $data);
        $this->load->view('penguji/layouts/footer', $data);
    }

    public function detail($id)
    {
        $this->db->join('user_mahasiswa', 'user_mahasiswa.id_mahasiswa = ta_ajuan.id_mahasiswa');
        $data['ajuan'] = $this->db->get_where('ta_ajuan', ['id_ajuan' => $id])->row();

        $this->db->join('detail_ujian', 'detail_ujian.id_detail = ta_ujian.id_detail');
        $this->db->join('user_penguji', 'user_penguji.id_penguji = detail_ujian.id_penguji');
        $data['ujian'] = $this->db->get_where('ta_ujian', ['id_ajuan' => $id])->result_array();

        $data['title'] = 'Detail Judul Skripsi Ajuan';
        $this->loadView('detail', $data);
    }

    public function add($id)
    {
        $this->db->join('user_mahasiswa', 'user_mahasiswa.id_mahasiswa = ta_ajuan.id_mahasiswa');
        $data['ajuan'] = $this->db->get_where('ta_ajuan', ['id_ajuan' => $id])->row();

        $data['title'] = 'Tambah Ujian';
        $this->loadView('add', $data);
    }

    public function proses_add()
    {
        $this->ujian_model->proses_add();
        redirect("penguji/ajuan/detail/" . $this->input->post('id_mahasiswa') . "");
    }

    public function update($id_ajuan)
    {
        $this->db->join('detail_ujian', 'detail_ujian.id_detail = ta_ujian.id_detail');
        $this->db->join('user_penguji', 'user_penguji.id_penguji = detail_ujian.id_penguji');
        $data['ujian'] = $this->db->get_where('ta_ujian', ['id_ajuan' => $id_ajuan])->row();

        $this->db->join('user_mahasiswa', 'user_mahasiswa.id_mahasiswa = ta_ajuan.id_mahasiswa');
        $data['ajuan'] = $this->db->get_where('ta_ajuan', ['ta_ajuan.id_ajuan' => $id_ajuan])->row();

        $data['title'] = 'Edit Ujian';
        $this->loadView('update', $data);
    }

    public function proses_update()
    {
        $this->ujian_model->proses_update_ujian();
        redirect("penguji/ajuan/detail/" . $this->input->post('id_mahasiswa') . "");
    }

    public function submit($id)
    {
        $this->ujian_model->proses_submit($id);

        $this->session->set_flashdata('success', 'Data berhasil dikirimkan !');
        redirect("penguji/ajuan/submitted");
    }
}

/* End of file Ajuan.php */
