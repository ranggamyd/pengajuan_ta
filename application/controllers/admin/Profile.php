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
        $this->load->view('admin/layouts/header', $data);
        $this->load->view('admin/profile/' . $file, $data);
        $this->load->view('admin/layouts/footer', $data);
    }

    public function index()
    {
        $id = $this->session->userdata('id_admin');
        $data['id'] = $id;

        $this->db->join('user', 'user.id_user = user_admin.id_user');
        $data['admin'] = $this->db->get_where('user_admin', ['id_admin' => $id])->row();

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
            $cek_password = $this->ajuan_model->cek_password_admin();
            if ($cek_password == false) {
                $this->session->set_flashdata('error', 'Password lama salah !');
                echo "<script>window.history.go(-1)</script>";
            } else {
                $this->ajuan_model->update_password_admin();
                // $this->session->sess_destroy();

                $this->session->set_flashdata('success', 'Password berhasil diubah. Mohon login kembali !');
                redirect('auth');
            }
        }
    }
}

/* End of file profile.php */
