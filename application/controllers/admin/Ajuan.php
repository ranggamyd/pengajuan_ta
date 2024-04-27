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
    }

    public function loadView($file, $data)
    {
        $this->load->view('admin/layouts/header', $data);
        $this->load->view('admin/ajuan/' . $file, $data);
        $this->load->view('admin/layouts/footer', $data);
    }

    public function index()
    {
        $data['ajuan'] = $this->ajuan_model->get_ajuan();

        $data['title'] = 'Daftar Judul Skripsi Ajuan';
        $this->loadView('ajuan', $data);
    }

    public function nonsubmitted()
    {
        $data['ajuan'] = $this->ajuan_model->get_ajuan_nonsubmitted();

        $data['title'] = 'Daftar Judul Skripsi Ajuan';
        $this->loadView('ajuan', $data);
    }

    public function detail($id)
    {
        $data['id'] = $id;
        $data['mhs'] = $this->db->get_where('user_mahasiswa', ['id_mahasiswa' => $id])->row();

        $this->db->select('ta_ajuan.id_ajuan, id_mahasiswa, judul_ajuan, tgl_ajuan, hasil_verifikasi, hasil_ujian, ta_ajuan.submit AS aSubmit, ta_verifikasi.submit AS vSubmit');
        $this->db->join('ta_verifikasi', 'ta_verifikasi.id_ajuan = ta_ajuan.id_ajuan', 'left');
        $data['ajuan'] = $this->db->get_where('ta_ajuan', ['id_mahasiswa' => $id])->result_array();

        $this->db->join('user_penguji', 'user_penguji.id_penguji = detail_ujian.id_penguji');
        $this->db->join('user_mahasiswa', 'user_mahasiswa.id_mahasiswa = detail_ujian.id_mahasiswa');
        $u = $this->db->get_where('detail_ujian', ['detail_ujian.id_mahasiswa' => $id]);
        if ($u->num_rows() > 0) {
            $data['ujian'] = $u->result_array();
        }

        $data['title'] = 'Detail Judul Skripsi';
        $this->loadView('ajuanDetail', $data);
    }

    public function verifikasi($id)
    {
        $this->db->join('user_mahasiswa', 'user_mahasiswa.id_mahasiswa = ta_ajuan.id_mahasiswa');
        $data['ajuan'] = $this->db->get_where('ta_ajuan', ['id_ajuan' => $id])->row();

        $data['title'] = 'Verifikasi Judul Skripsi';
        $this->loadView('ajuanVerify', $data);
    }

    public function proses_verifikasi()
    {
        $this->ajuan_model->proses_verifikasi();
        redirect("admin/ajuan/detail/" . $this->input->post('id_mahasiswa') . "");
    }

    public function update($id)
    {
        $this->db->join('user_mahasiswa', 'user_mahasiswa.id_mahasiswa = ta_ajuan.id_mahasiswa');
        $data['ajuan'] = $this->db->get_where('ta_ajuan', ['id_ajuan' => $id])->row();
        $data['verifikasi'] = $this->db->get_where('ta_verifikasi', ['id_ajuan' => $id])->row();

        $data['title'] = 'Edit Verifikasi';
        $this->loadView('ajuanUpdate', $data);
    }

    public function proses_update()
    {
        $this->ajuan_model->proses_update_verifikasi();
        redirect("admin/ajuan/detail/" . $this->input->post('id_mahasiswa') . "");
    }

    public function submit($id)
    {
        $this->ajuan_model->proses_submit_verifikasi($id);

        $this->session->set_flashdata('success', 'Data berhasil dikirimkan !');
        redirect("admin/ajuan/detail/$id");
    }

    public function detail_verifikasi($id)
    {
        $this->db->join('user_mahasiswa', 'user_mahasiswa.id_mahasiswa = ta_ajuan.id_mahasiswa');
        $data['ajuan'] = $this->db->get_where('ta_ajuan', ['id_ajuan' => $id])->row();
        $data['verifikasi'] = $this->db->get_where('ta_verifikasi', ['id_ajuan' => $id])->row();
        $data['ujian'] = $this->db->get_where('ta_ujian', ['id_ajuan' => $id])->row();

        $data['title'] = 'Detail Verifikasi';
        $this->loadView('ajuanVerifyDetail', $data);
    }

    public function verified()
    {
        $data['verified'] = $this->ajuan_model->get_verified_ajuan();

        $data['title'] = 'Judul Skripsi Lolos Verifikasi';
        $this->loadView('ajuanVerified', $data);
    }
}

/* End of file Ajuan.php */
