<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Management extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        if (empty($this->session->userdata('status'))) {
            redirect('auth');
        }

        $this->load->model('management_model');
    }

    public function loadView($file, $data)
    {
        $this->load->view('admin/layouts/header', $data);
        $this->load->view('admin/management/' . $file, $data);
        $this->load->view('admin/layouts/footer', $data);
    }

    public function admin()
    {
        $data['admin'] = $this->management_model->get_admin();

        $data['title'] = 'Manajemen admin';
        $this->loadView('admin/admin', $data);
    }

    public function add_admin()
    {
        $data['title'] = 'Tambah Admin';
        $this->loadView('admin/add', $data);
    }

    public function proses_add_admin()
    {
        $this->form_validation->set_rules('username', 'Username', 'is_unique[user.username]');
        if ($this->form_validation->run() != false) {
            $this->management_model->add_admin();

            $this->session->set_flashdata('success', 'Data berhasil ditambahkan !');
            redirect('admin/management/admin');
        } else {
            $this->session->set_flashdata('error', 'Username sudah ada !');
            echo "<script>window.history.go(-1)</script>";
        }
    }

    public function detail_admin($id_admin)
    {
        $data['admin'] = $this->management_model->get_anAdmin($id_admin);

        $data['title'] = 'Detail Admin';
        $this->loadView('admin/detail', $data);
    }

    public function update_admin($id_admin)
    {
        $data['admin'] = $this->management_model->get_anAdmin($id_admin);

        $data['title'] = 'Edit Admin';
        $this->loadView('admin/update', $data);
    }

    public function proses_update_admin()
    {
        $k_id = $this->input->post('id_admin');
        $k_un = $this->input->post('username');
        $r_u = $this->management_model->get_anAdmin($k_id);

        if ($k_un != $r_u->username) {
            $this->form_validation->set_rules('username', 'Username', 'is_unique[user.username]');
        } else {
            $this->form_validation->set_rules('username', 'Username', 'required');
        }

        if ($this->form_validation->run() != false) {
            $this->management_model->update_admin();

            $this->session->set_flashdata('success', 'Data berhasil diubah !');
            redirect('admin/management/admin');
        } else {
            $this->session->set_flashdata('error', 'Username sudah ada !');
            echo "<script>window.history.go(-1)</script>";
        }
    }

    public function delete_admin($id_admin)
    {
        $this->management_model->delete_admin($id_admin);

        $this->session->set_flashdata('success', 'Data berhasil dihapus !');
        redirect('admin/management/admin');
    }

    public function penguji()
    {
        $data['penguji'] = $this->management_model->get_penguji();

        $data['title'] = 'Manajemen Penguji';
        $this->loadView('penguji/penguji', $data);
    }

    public function add_penguji()
    {
        $data['title'] = 'Tambah Penguji';
        $this->loadView('penguji/add', $data);
    }

    public function proses_add_penguji()
    {
        $this->form_validation->set_rules('username', 'Username', 'is_unique[user.username]');
        if ($this->form_validation->run() != false) {
            $this->management_model->add_penguji();

            $this->session->set_flashdata('success', 'Data berhasil ditambahkan !');
            redirect('admin/management/penguji');
        } else {
            $this->session->set_flashdata('error', 'Username sudah ada !');
            echo "<script>window.history.go(-1)</script>";
        }
    }

    public function detail_penguji($id_penguji)
    {
        $data['penguji'] = $this->management_model->get_anpenguji($id_penguji);

        $data['title'] = 'Detail Penguji';
        $this->loadView('penguji/detail', $data);
    }

    public function update_penguji($id_penguji)
    {
        $data['penguji'] = $this->management_model->get_anpenguji($id_penguji);

        $data['title'] = 'Edit Penguji';
        $this->loadView('penguji/update', $data);
    }

    public function proses_update_penguji()
    {
        $k_id = $this->input->post('id_penguji');
        $k_un = $this->input->post('username');
        $r_u = $this->management_model->get_anpenguji($k_id);

        if ($k_un != $r_u->username) {
            $this->form_validation->set_rules('username', 'Username', 'is_unique[user.username]');
        } else {
            $this->form_validation->set_rules('username', 'Username', 'required');
        }

        if ($this->form_validation->run() != false) {
            $this->management_model->update_penguji();

            $this->session->set_flashdata('success', 'Data berhasil diubah !');
            redirect('admin/management/penguji');
        } else {
            $this->session->set_flashdata('error', 'Username sudah ada !');
            echo "<script>window.history.go(-1)</script>";
        }
    }

    public function delete_penguji($id_penguji)
    {
        $this->management_model->delete_penguji($id_penguji);

        $this->session->set_flashdata('success', 'Data berhasil dihapus !');
        redirect('admin/management/penguji');
    }

    public function mahasiswa()
    {
        $data['mahasiswa'] = $this->management_model->get_mahasiswa();

        $data['title'] = 'Manajemen Mahasiswa';
        $this->loadView('mahasiswa/mahasiswa', $data);
    }

    public function add_mahasiswa()
    {
        $data['title'] = 'Tambah Mahasiswa';
        $this->loadView('mahasiswa/add', $data);
    }

    public function proses_add_mahasiswa()
    {
        $this->form_validation->set_rules('username', 'Username', 'is_unique[user.username]');
        if ($this->form_validation->run() != false) {
            $this->management_model->add_mahasiswa();

            $this->session->set_flashdata('success', 'Data berhasil ditambahkan !');
            redirect('admin/management/mahasiswa');
        } else {
            $this->session->set_flashdata('error', 'Username sudah ada !');
            echo "<script>window.history.go(-1)</script>";
        }
    }

    public function detail_mahasiswa($id_mahasiswa)
    {
        $data['mahasiswa'] = $this->management_model->get_anmahasiswa($id_mahasiswa);

        $data['title'] = 'Detail Mahasiswa';
        $this->loadView('mahasiswa/detail', $data);
    }

    public function update_mahasiswa($id_mahasiswa)
    {
        $data['mahasiswa'] = $this->management_model->get_anmahasiswa($id_mahasiswa);

        $data['title'] = 'Edit Mahasiswa';
        $this->loadView('mahasiswa/update', $data);
    }

    public function proses_update_mahasiswa()
    {
        $k_id = $this->input->post('id_mahasiswa');
        $k_un = $this->input->post('username');
        $r_u = $this->management_model->get_anmahasiswa($k_id);

        if ($k_un != $r_u->username) {
            $this->form_validation->set_rules('username', 'Username', 'is_unique[user.username]');
        } else {
            $this->form_validation->set_rules('username', 'Username', 'required');
        }

        if ($this->form_validation->run() != false) {
            $this->management_model->update_mahasiswa();

            $this->session->set_flashdata('success', 'Data berhasil diubah !');
            redirect('admin/management/mahasiswa');
        } else {
            $this->session->set_flashdata('error', 'Username sudah ada !');
            echo "<script>window.history.go(-1)</script>";
        }
    }

    public function delete_mahasiswa($id_mahasiswa)
    {
        $this->management_model->delete_mahasiswa($id_mahasiswa);

        $this->session->set_flashdata('success', 'Data berhasil dihapus !');
        redirect('admin/management/mahasiswa');
    }

    public function prodi()
    {
        $data['prodi'] = $this->management_model->get_prodi();

        $data['title'] = 'Manajemen prodi';
        $this->loadView('prodi/prodi', $data);
    }

    public function add_prodi()
    {
        $data['title'] = 'Tambah Prodi';
        $this->loadView('prodi/add', $data);
    }

    public function proses_add_prodi()
    {
        $this->form_validation->set_rules('prodi', 'Prodi', 'required');
        $this->form_validation->set_rules('konsentrasi', 'konsentrasi', 'required');
        $this->form_validation->set_rules('kelas', 'kelas', 'required');
        if ($this->form_validation->run() != false) {
            $this->management_model->add_prodi();

            $this->session->set_flashdata('success', 'Data berhasil ditambahkan !');
            redirect('admin/management/prodi');
        } else {
            $this->session->set_flashdata('error', 'Prodi sudah ada !');
            echo "<script>window.history.go(-1)</script>";
        }
    }

    public function update_prodi($id_prodi)
    {
        $data['prodi'] = $this->management_model->get_anprodi($id_prodi);

        $data['title'] = 'Edit Prodi';
        $this->loadView('prodi/update', $data);
    }

    public function proses_update_prodi()
    {
        $this->form_validation->set_rules('prodi', 'Prodi', 'required');
        $this->form_validation->set_rules('konsentrasi', 'konsentrasi', 'required');
        $this->form_validation->set_rules('kelas', 'kelas', 'required');
        if ($this->form_validation->run() != false) {
            $this->management_model->update_prodi();

            $this->session->set_flashdata('success', 'Data berhasil diubah !');
            redirect('admin/management/prodi');
        } else {
            $this->session->set_flashdata('error', 'Prodi sudah ada !');
            echo "<script>window.history.go(-1)</script>";
        }
    }

    public function delete_prodi($id_prodi)
    {
        $this->management_model->delete_prodi($id_prodi);

        $this->session->set_flashdata('success', 'Data berhasil dihapus !');
        redirect('admin/management/prodi');
    }

    public function manajer()
    {
        $data['manajer'] = $this->management_model->get_manajer();

        $data['title'] = 'Manajemen Manajer';
        $this->loadView('manajer/manajer', $data);
    }

    public function add_manajer()
    {
        $data['title'] = 'Tambah Manajer';
        $this->loadView('manajer/add', $data);
    }

    public function proses_add_manajer()
    {
        $this->form_validation->set_rules('username', 'Username', 'is_unique[user.username]');
        if ($this->form_validation->run() != false) {
            $this->management_model->add_manajer();

            $this->session->set_flashdata('success', 'Data berhasil ditambahkan !');
            redirect('admin/management/manajer');
        } else {
            $this->session->set_flashdata('error', 'Username sudah ada !');
            echo "<script>window.history.go(-1)</script>";
        }
    }

    public function detail_manajer($id_manajer)
    {
        $data['manajer'] = $this->management_model->get_anmanajer($id_manajer);

        $data['title'] = 'Detail Manajer';
        $this->loadView('manajer/detail', $data);
    }

    public function update_manajer($id_manajer)
    {
        $data['manajer'] = $this->management_model->get_anmanajer($id_manajer);

        $data['title'] = 'Edit Manajer';
        $this->loadView('manajer/update', $data);
    }

    public function proses_update_manajer()
    {
        $k_id = $this->input->post('id_manajer');
        $k_un = $this->input->post('username');
        $r_u = $this->management_model->get_anmanajer($k_id);

        if ($k_un != $r_u->username) {
            $this->form_validation->set_rules('username', 'Username', 'is_unique[user.username]');
        } else {
            $this->form_validation->set_rules('username', 'Username', 'required');
        }

        if ($this->form_validation->run() != false) {
            $this->management_model->update_manajer();

            $this->session->set_flashdata('success', 'Data berhasil diubah !');
            redirect('admin/management/manajer');
        } else {
            $this->session->set_flashdata('error', 'Username sudah ada !');
            echo "<script>window.history.go(-1)</script>";
        }
    }

    public function delete_manajer($id_manajer)
    {
        $this->management_model->delete_manajer($id_manajer);

        $this->session->set_flashdata('success', 'Data berhasil dihapus !');
        redirect('admin/management/manajer');
    }
}

/* End of file Management.php */
