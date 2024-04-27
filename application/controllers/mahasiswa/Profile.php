<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Profile extends CI_Controller
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
        $this->load->view('mahasiswa/profile/' . $file, $data);
        $this->load->view('mahasiswa/layouts/footer', $data);
    }

    public function index()
    {
        $id = $this->session->userdata('id_mahasiswa');
        $data['id'] = $id;
        $data['mhs'] = $this->db->get_where('user_mahasiswa', ['id_mahasiswa' => $id])->row();
        $data['ajuan'] = $this->db->get_where('ta_ajuan', ['id_mahasiswa' => $id])->result_array();

        $data['title'] = 'Profil Saya';
        $this->loadView('profile', $data);
    }

    public function update_password()
    {
        $this->form_validation->set_rules('new', 'New', 'required|alpha_numeric');
        $this->form_validation->set_rules('re_new', 'Retype New', 'required|matches[new]');;

        if ($this->form_validation->run() == FALSE) {
            $this->session->set_flashdata('error', 'Konfirmasi password tidak sesuai !');
            echo "<script>window.history.go(-1)</script>";
        } else {
            $cek_password = $this->ajuan_model->cek_password();
            if ($cek_password == false) {
                $this->session->set_flashdata('error', 'Password lama salah !');
                echo "<script>window.history.go(-1)</script>";
            } else {
                $this->ajuan_model->update_password();
                // $this->session->sess_destroy();

                $this->session->set_flashdata('success', 'Password berhasil diubah. Mohon login kembali !');
                redirect('auth');
            }
        }
    }
}

/* End of file profile.php */
