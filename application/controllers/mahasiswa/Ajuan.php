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
        $this->load->view('mahasiswa/layouts/header', $data);
        $this->load->view('mahasiswa/ajuan/' . $file, $data);
        $this->load->view('mahasiswa/layouts/footer', $data);
    }

    public function index()
    {
        $id = $this->session->userdata('id_mahasiswa');
        $data['id'] = $id;
        $data['mhs'] = $this->db->get_where('user_mahasiswa', ['id_mahasiswa' => $id])->row();
        $data['ajuan'] = $this->db->get_where('ta_ajuan', ['id_mahasiswa' => $id])->result_array();
        $data['total_ajuan'] = $this->db->get_where('ta_ajuan', ['id_mahasiswa' => $id])->num_rows();

        $data['title'] = 'Judul Ajuan Saya';
        $this->loadView('ajuan', $data);
    }

    public function add()
    {
        $id = $this->session->userdata('id_mahasiswa');
        $data['mhs'] = $this->db->get_where('user_mahasiswa', ['id_mahasiswa' => $id])->row();

        $data['title'] = 'Tambah Judul Skripsi';
        $this->loadView('add', $data);
    }

    public function proses_add()
    {
        $this->form_validation->set_rules('judul_ajuan', 'Judul Ajuan', 'is_unique[ta_ajuan.judul_ajuan]');
        if ($this->form_validation->run() != false) {
            $this->ajuan_model->proses_add();

            $this->session->set_flashdata('success', 'Data berhasil ditambahkan !');
            redirect("mahasiswa/ajuan");
        } else {
            $this->session->set_flashdata('error', 'Judul Ajuan sudah ada !');
            echo "<script>window.history.go(-1)</script>";
        }
    }

    public function update($id_ajuan)
    {
        $id = $this->session->userdata('id_mahasiswa');
        $data['id_ajuan'] = $id_ajuan;
        $data['mhs'] = $this->db->get_where('user_mahasiswa', ['id_mahasiswa' => $id])->row();
        $data['ajuan'] = $this->db->get_where('ta_ajuan', ['id_ajuan' => $id_ajuan])->row();

        $data['title'] = 'Update Judul Skripsi';
        $this->loadView('update', $data);
    }

    public function proses_update()
    {
        $this->form_validation->set_rules('judul_ajuan', 'Judul Ajuan', 'is_unique[ta_ajuan.judul_ajuan]');
        if ($this->form_validation->run() != false) {
            $this->ajuan_model->proses_update();

            $this->session->set_flashdata('success', 'Data berhasil diubah !');
            redirect("mahasiswa/ajuan");
        } else {
            $this->session->set_flashdata('error', 'Judul Ajuan sudah ada !');
            echo "<script>window.history.go(-1)</script>";
        }
    }

    public function detail($id_ajuan)
    {
        $id = $this->session->userdata('id_mahasiswa');
        $data['id_ajuan'] = $id_ajuan;
        $data['mhs'] = $this->db->get_where('user_mahasiswa', ['id_mahasiswa' => $id])->row();
        $data['ajuan'] = $this->db->get_where('ta_ajuan', ['id_ajuan' => $id_ajuan])->row();

        $data['title'] = 'Detail Judul Skripsi';
        $this->loadView('detail', $data);
    }

    public function submit($id)
    {
        $this->ajuan_model->proses_submit($id);

        $this->session->set_flashdata('success', 'Data berhasil dikirimkan !');
        redirect("mahasiswa/ajuan");
    }
}

/* End of file Ajuan.php */
