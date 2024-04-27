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
        $this->load->view('admin/layouts/header', $data);
        $this->load->view('admin/ujian/' . $file, $data);
        $this->load->view('admin/layouts/footer', $data);
    }

    public function index()
    {
        $data['ujian'] = $this->ujian_model->get_ujian();

        $data['title'] = 'Daftar Ujian Judul Skripsi';
        $this->loadView('ujian', $data);
    }

    public function detail($id)
    {
        $data['id'] = $id;
        $data['mhs'] = $this->db->get_where('user_mahasiswa', ['id_mahasiswa' => $id])->row();

        $this->db->join('user_penguji', 'user_penguji.id_penguji = detail_ujian.id_penguji');
        $this->db->join('user_mahasiswa', 'user_mahasiswa.id_mahasiswa = detail_ujian.id_mahasiswa');
        $data['ujian'] = $this->db->get_where('detail_ujian', ['detail_ujian.id_mahasiswa' => $id]);

        $data['title'] = 'Detail Ujian Judul Skripsi';
        $this->loadView('ujianDetail', $data);
    }

    public function create($id)
    {
        $this->db->join('user_mahasiswa', 'user_mahasiswa.id_mahasiswa = ta_ajuan.id_mahasiswa');
        $data['ujian'] = $this->db->get_where('ta_ajuan', ['ta_ajuan.id_mahasiswa' => $id])->row();

        $data['title'] = 'Buat Ujian Judul Skripsi';
        $this->loadView('create', $data);
    }

    public function proses_create()
    {
        $this->form_validation->set_rules('id_penguji_1', 'Nama Penguji 1', 'required|differs[id_penguji_2]');
        $this->form_validation->set_rules('id_penguji_2', 'Nama Penguji 2', 'required|differs[id_penguji_1]');

        if ($this->form_validation->run() != false) {
            $this->ujian_model->proses_create();

            $this->session->set_flashdata('success', 'Data berhasil ditambahkan !');
            redirect("admin/ujian/detail/" . $this->input->post('id_mahasiswa') . "");
        } else {
            $this->session->set_flashdata('error', validation_errors());
            echo "<script>window.history.go(-1)</script>";
        }
    }

    public function update($id)
    {
        $this->db->join('user_mahasiswa', 'user_mahasiswa.id_mahasiswa = detail_ujian.id_mahasiswa');
        $data['ujian'] = $this->db->get_where('detail_ujian', ['id_detail' => $id])->row();

        $data['title'] = 'Update Ujian Judul Skripsi';
        $this->loadView('update', $data);
    }

    public function proses_update()
    {
        $this->ujian_model->proses_update();

        $this->session->set_flashdata('success', 'Data berhasil diubah !');
        redirect("admin/ujian/detail/" . $this->input->post('id_mahasiswa') . "");
    }

    public function delete($id)
    {
        $this->ujian_model->proses_delete($id);

        $this->session->set_flashdata('success', 'Data berhasil dihapus !');
        redirect("admin/ujian/detail/$id");
    }
}

/* End of file ujian.php */
