<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Page_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
        date_default_timezone_set('Asia/Jakarta');
    }

    public function get_artikel()
    {
        $this->db->order_by('updated_at', 'desc');
        return $this->db->get('halaman')->result_array();
    }

    public function add_artikel()
    {
        $data = [
            'judul_halaman' => $this->input->post('judul_halaman'),
            'isi_halaman' => $this->input->post('isi_halaman'),
            'created_by' => $this->session->userdata('id_admin'),
            'created_at' => date('Y-m-d H:i:s'),
            'updated_by' => $this->session->userdata('id_admin'),
            'updated_at' => date('Y-m-d H:i:s')
        ];

        $this->db->insert('halaman', $data);
    }

    public function get_anArtikel($id_artikel)
    {
        $this->db->order_by('updated_at', 'desc');
        return $this->db->get_where('halaman', ['id_halaman' => $id_artikel])->row();
    }

    public function update_artikel()
    {
        $data = [
            'judul_halaman' => $this->input->post('judul_halaman'),
            'isi_halaman' => $this->input->post('isi_halaman'),
            'updated_by' => $this->session->userdata('id_admin'),
            'updated_at' => date('Y-m-d H:i:s')
        ];

        $this->db->update('halaman', $data, ['id_halaman' => $this->input->post('id_halaman')]);
    }

    public function delete_artikel($id_artikel)
    {
        $this->db->delete('halaman', ['id_halaman' => $id_artikel]);
    }

    public function get_pengumuman()
    {
        $this->db->order_by('updated_at', 'desc');
        return $this->db->get('pengumuman')->result_array();
    }

    public function add_pengumuman()
    {
        $data = [
            'judul' => $this->input->post('judul'),
            'isi' => $this->input->post('isi'),
            'arsip' => 0,
            'created_by' => $this->session->userdata('id_admin'),
            'created_at' => date('Y-m-d H:i:s'),
            'updated_by' => $this->session->userdata('id_admin'),
            'updated_at' => date('Y-m-d H:i:s')
        ];

        $this->db->insert('pengumuman', $data);
    }

    public function get_anPengumuman($id_pengumuman)
    {
        $this->db->order_by('updated_at', 'desc');
        return $this->db->get_where('pengumuman', ['id_pengumuman' => $id_pengumuman])->row();
    }

    public function update_pengumuman()
    {
        $data = [
            'judul' => $this->input->post('judul'),
            'isi' => $this->input->post('isi'),
            'arsip' => 0,
            'updated_by' => $this->session->userdata('id_admin'),
            'updated_at' => date('Y-m-d H:i:s')
        ];

        $this->db->update('pengumuman', $data, ['id_pengumuman' => $this->input->post('id_pengumuman')]);
    }

    public function delete_pengumuman($id_pengumuman)
    {
        $this->db->delete('pengumuman', ['id_pengumuman' => $id_pengumuman]);
    }

    public function update_logo()
    {
        $config['file_name']            = 'logo.png';
        $config['upload_path']          = './assets/images';
        $config['allowed_types']        = 'jpg|png|jpeg';
        $config['overwrite']            = TRUE;
        $config['max_size']             = 5000;

        $this->load->library('upload', $config);
        $this->upload->do_upload('logo');
    }

    public function update_banner()
    {
        $config['file_name']            = 'slider-image1.jpg';
        $config['upload_path']          = './assets/images';
        $config['allowed_types']        = 'jpg|png|jpeg';
        $config['overwrite']            = TRUE;
        $config['max_size']             = 5000;

        $this->load->library('upload', $config);
        $this->upload->do_upload('banner');
    }

    public function update_avatar_male()
    {
        $config['file_name']            = 'avatar-L.jpg';
        $config['upload_path']          = './assets/images';
        $config['allowed_types']        = 'jpg|png|jpeg';
        $config['overwrite']            = TRUE;
        $config['max_size']             = 5000;

        $this->load->library('upload', $config);
        $this->upload->do_upload('avatar');
    }

    public function update_avatar_female()
    {
        $config['file_name']            = 'avatar-P.jpg';
        $config['upload_path']          = './assets/images';
        $config['allowed_types']        = 'jpg|png|jpeg';
        $config['overwrite']            = TRUE;
        $config['max_size']             = 5000;

        $this->load->library('upload', $config);
        $this->upload->do_upload('avatar');
    }
}

/* End of file Page_model.php */
