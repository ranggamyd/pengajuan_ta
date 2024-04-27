<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('auth_model');
    }

    public function index()
    {
        $this->load->view('auth/login');
    }

    public function login()
    {
        $auth = $this->auth_model->login();

        if ($auth == 'logged in as admin') {
            redirect('admin');
        } elseif ($auth == 'logged in as mahasiswa') {
            redirect('mahasiswa');
        } elseif ($auth == 'logged in as penguji') {
            redirect('penguji');
        } elseif ($auth == 'logged in as manajer') {
            redirect('manajer');
        } else {
            $this->session->set_flashdata('error', 'Username atau Sandi tidak ditemukkan !');
            echo "
            <script>
                window.history.go(-1)
            </script>
            ";
        }
    }

    public function logout()
    {
        $this->auth_model->logout();
        redirect('auth');
    }
}

/* End of file Auth.php */
