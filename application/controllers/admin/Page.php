<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Page extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        if (empty($this->session->userdata('status'))) {
            redirect('auth');
        }

        $this->load->model('page_model');
    }

    public function loadView($file, $data)
    {
        $this->load->view('admin/layouts/header', $data);
        $this->load->view('admin/page/' . $file, $data);
        $this->load->view('admin/layouts/footer', $data);
    }

    public function artikel()
    {
        $data['artikel'] = $this->page_model->get_artikel();

        $data['title'] = 'Halaman Artikel';
        $this->loadView('artikel/artikel', $data);
    }

    public function add_artikel()
    {
        $data['title'] = 'Tambah Artikel';
        $this->loadView('artikel/add', $data);
    }

    public function proses_add_artikel()
    {
        $this->form_validation->set_rules('judul_halaman', 'Judul Halaman', 'is_unique[halaman.judul_halaman]');
        if ($this->form_validation->run() != false) {
            $this->page_model->add_artikel();

            $this->session->set_flashdata('success', 'Data berhasil ditambahkan !');
            redirect('admin/page/artikel');
        } else {
            $this->session->set_flashdata('error', 'Artikel sudah ada !');
            echo "<script>window.history.go(-1)</script>";
        }
    }

    public function detail_artikel($id_artikel)
    {
        $data['artikel'] = $this->page_model->get_anArtikel($id_artikel);

        $data['title'] = 'Detail Artikel';
        $this->loadView('artikel/detail', $data);
    }

    public function update_artikel($id_artikel)
    {
        $data['artikel'] = $this->page_model->get_anArtikel($id_artikel);

        $data['title'] = 'Edit Artikel';
        $this->loadView('artikel/update', $data);
    }

    public function proses_update_artikel()
    {
        $this->page_model->update_artikel();

        $this->session->set_flashdata('success', 'Data berhasil diubah !');
        redirect('admin/page/artikel');
    }

    public function delete_artikel($id_artikel)
    {
        $this->page_model->delete_artikel($id_artikel);

        $this->session->set_flashdata('success', 'Data berhasil dihapus !');
        redirect('admin/page/artikel');
    }

    public function pengumuman()
    {
        $data['pengumuman'] = $this->page_model->get_pengumuman();

        $data['title'] = 'Halaman Pengumuman';
        $this->loadView('pengumuman/pengumuman', $data);
    }

    public function add_pengumuman()
    {
        $data['title'] = 'Tambah Pengumuman';
        $this->loadView('pengumuman/add', $data);
    }

    public function proses_add_pengumuman()
    {
        $this->form_validation->set_rules('judul_pengumuman', 'Judul pengumuman', 'is_unique[pengumuman.judul_pengumuman]');
        if ($this->form_validation->run() != false) {
            $this->page_model->add_pengumuman();

            $this->session->set_flashdata('success', 'Data berhasil ditambahkan !');
            redirect('admin/page/pengumuman');
        } else {
            $this->session->set_flashdata('error', 'pengumuman sudah ada !');
            echo "<script>window.history.go(-1)</script>";
        }
    }

    public function detail_pengumuman($id_pengumuman)
    {
        $data['pengumuman'] = $this->page_model->get_anpengumuman($id_pengumuman);

        $data['title'] = 'Detail Pengumuman';
        $this->loadView('pengumuman/detail', $data);
    }

    public function update_pengumuman($id_pengumuman)
    {
        $data['pengumuman'] = $this->page_model->get_anpengumuman($id_pengumuman);

        $data['title'] = 'Edit Pengumuman';
        $this->loadView('pengumuman/update', $data);
    }

    public function proses_update_pengumuman()
    {
        $this->page_model->update_pengumuman();

        $this->session->set_flashdata('success', 'Data berhasil diubah !');
        redirect('admin/page/pengumuman');
    }

    public function delete_pengumuman($id_pengumuman)
    {
        $this->page_model->delete_pengumuman($id_pengumuman);

        $this->session->set_flashdata('success', 'Data berhasil dihapus !');
        redirect('admin/page/pengumuman');
    }

    public function media()
    {
        $data['title'] = 'Halaman Media';
        $this->loadView('media/media', $data);
    }

    public function proses_update_logo()
    {
        $this->page_model->update_logo();

        $this->session->set_flashdata('success', 'Data berhasil diubah !');
        redirect('admin/page/media');
    }

    public function proses_update_banner()
    {
        $this->page_model->update_banner();

        $this->session->set_flashdata('success', 'Data berhasil diubah !');
        redirect('admin/page/media');
    }

    public function proses_update_avatar_male()
    {
        $this->page_model->update_avatar_male();

        $this->session->set_flashdata('success', 'Data berhasil diubah !');
        redirect('admin/page/media');
    }

    public function proses_update_avatar_female()
    {
        $this->page_model->update_avatar_female();

        $this->session->set_flashdata('success', 'Data berhasil diubah !');
        redirect('admin/page/media');
    }
}

/* End of file Page.php */
