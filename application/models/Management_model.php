<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Management_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        date_default_timezone_set('Asia/Jakarta');
    }

    public function get_admin()
    {
        $this->db->order_by('nama_admin', 'asc');
        $this->db->join('user', 'user.id_user = user_admin.id_user');
        return $this->db->get('user_admin')->result_array();
    }

    public function add_admin()
    {
        $data = [
            'username' => $this->input->post('username'),
            'password_hash' => password_hash($this->input->post('username'), PASSWORD_DEFAULT),
            'role' => 'admin',
            'created_by' => $this->session->userdata('id_user'),
            'created_at' => date('Y-m-d H:i:s'),
            'updated_by' => $this->session->userdata('id_user'),
            'updated_at' => date('Y-m-d H:i:s'),
        ];

        $this->db->insert('user', $data);

        $dataAdmin = [
            'id_user' => $this->db->get_where('user', ['username' => $this->input->post('username')])->row('id_user'),
            'nama_admin' => $this->input->post('nama_admin'),
            'jenis_kelamin' => $this->input->post('jenis_kelamin'),
            'jabatan' => $this->input->post('jabatan'),
        ];

        $this->db->insert('user_admin', $dataAdmin);
    }

    public function get_anAdmin($id_admin)
    {
        $this->db->join('user', 'user.id_user = user_admin.id_user');
        return $this->db->get_where('user_admin', ['id_admin' => $id_admin])->row();
    }

    public function update_admin()
    {
        $data = [
            'username' => $this->input->post('username'),
            'password_hash' => password_hash($this->input->post('username'), PASSWORD_DEFAULT),
            'role' => 'admin',
            'updated_by' => $this->session->userdata('id_user'),
            'updated_at' => date('Y-m-d H:i:s'),
        ];

        $this->db->update('user', $data, ['id_user' => $this->input->post('id_user')]);

        $dataAdmin = [
            'nama_admin' => $this->input->post('nama_admin'),
            'jenis_kelamin' => $this->input->post('jenis_kelamin'),
            'jabatan' => $this->input->post('jabatan'),
        ];

        $this->db->update('user_admin', $dataAdmin, ['id_admin' => $this->input->post('id_admin')]);
    }

    public function delete_admin($id_admin)
    {
        $this->db->join('user_admin', 'user_admin.id_user = user.id_user');
        $id_user = $this->db->get_where('user', ['user_admin.id_admin' => $id_admin])->row('id_user');

        $this->db->delete('user', ['id_user' => $id_user]);
        $this->db->delete('user_admin', ['id_admin' => $id_admin]);
    }

    public function get_penguji()
    {
        $this->db->order_by('nama_penguji', 'asc');
        $this->db->join('user', 'user.id_user = user_penguji.id_user');
        return $this->db->get('user_penguji')->result_array();
    }

    public function add_penguji()
    {
        $data = [
            'username' => $this->input->post('username'),
            'password_hash' => password_hash($this->input->post('username'), PASSWORD_DEFAULT),
            'role' => 'penguji',
            'created_by' => $this->session->userdata('id_user'),
            'created_at' => date('Y-m-d H:i:s'),
            'updated_by' => $this->session->userdata('id_user'),
            'updated_at' => date('Y-m-d H:i:s'),
        ];

        $this->db->insert('user', $data);

        $datapenguji = [
            'id_user' => $this->db->get_where('user', ['username' => $this->input->post('username')])->row('id_user'),
            'nik' => $this->input->post('username'),
            'nama_penguji' => $this->input->post('nama_penguji'),
            'jenis_kelamin' => $this->input->post('jenis_kelamin'),
            'jafung' => $this->input->post('jafung'),
        ];

        $this->db->insert('user_penguji', $datapenguji);
    }

    public function get_anPenguji($id_penguji)
    {
        $this->db->join('user', 'user.id_user = user_penguji.id_user');
        return $this->db->get_where('user_penguji', ['id_penguji' => $id_penguji])->row();
    }

    public function update_penguji()
    {
        $data = [
            'username' => $this->input->post('username'),
            'password_hash' => password_hash($this->input->post('username'), PASSWORD_DEFAULT),
            'role' => 'penguji',
            'updated_by' => $this->session->userdata('id_user'),
            'updated_at' => date('Y-m-d H:i:s'),
        ];

        $this->db->update('user', $data, ['id_user' => $this->input->post('id_user')]);

        $datapenguji = [
            'nik' => $this->input->post('username'),
            'nama_penguji' => $this->input->post('nama_penguji'),
            'jenis_kelamin' => $this->input->post('jenis_kelamin'),
            'jafung' => $this->input->post('jafung'),
        ];

        $this->db->update('user_penguji', $datapenguji, ['id_penguji' => $this->input->post('id_penguji')]);
    }

    public function delete_penguji($id_penguji)
    {
        $this->db->join('user_penguji', 'user_penguji.id_user = user.id_user');
        $id_user = $this->db->get_where('user', ['user_penguji.id_penguji' => $id_penguji])->row('id_user');

        $this->db->delete('user', ['id_user' => $id_user]);
        $this->db->delete('user_penguji', ['id_penguji' => $id_penguji]);
    }

    public function get_mahasiswa()
    {
        $this->db->order_by('nama_mahasiswa', 'asc');
        $this->db->join('user', 'user.id_user = user_mahasiswa.id_user');
        return $this->db->get('user_mahasiswa')->result_array();
    }

    public function add_mahasiswa()
    {
        $data = [
            'username' => $this->input->post('username'),
            'password_hash' => password_hash($this->input->post('username'), PASSWORD_DEFAULT),
            'role' => 'mahasiswa',
            'created_by' => $this->session->userdata('id_user'),
            'created_at' => date('Y-m-d H:i:s'),
            'updated_by' => $this->session->userdata('id_user'),
            'updated_at' => date('Y-m-d H:i:s'),
        ];

        $this->db->insert('user', $data);

        $datamahasiswa = [
            'id_user' => $this->db->get_where('user', ['username' => $this->input->post('username')])->row('id_user'),
            'npm' => $this->input->post('username'),
            'nama_mahasiswa' => $this->input->post('nama_mahasiswa'),
            'jenis_kelamin' => $this->input->post('jenis_kelamin'),
            'kelas' => $this->input->post('kelas'),
            'semester' => $this->input->post('semester'),
            'tahun_masuk' => $this->input->post('tahun_masuk'),
            'prodi' => $this->input->post('prodi'),
            'konsentrasi' => $this->input->post('konsentrasi')
        ];

        $this->db->insert('user_mahasiswa', $datamahasiswa);
    }

    public function get_anMahasiswa($id_mahasiswa)
    {
        $this->db->join('user', 'user.id_user = user_mahasiswa.id_user');
        return $this->db->get_where('user_mahasiswa', ['id_mahasiswa' => $id_mahasiswa])->row();
    }

    public function update_mahasiswa()
    {
        $data = [
            'username' => $this->input->post('username'),
            'password_hash' => password_hash($this->input->post('username'), PASSWORD_DEFAULT),
            'role' => 'mahasiswa',
            'updated_by' => $this->session->userdata('id_user'),
            'updated_at' => date('Y-m-d H:i:s'),
        ];

        $this->db->update('user', $data, ['id_user' => $this->input->post('id_user')]);

        $datamahasiswa = [
            'npm' => $this->input->post('username'),
            'nama_mahasiswa' => $this->input->post('nama_mahasiswa'),
            'jenis_kelamin' => $this->input->post('jenis_kelamin'),
            'kelas' => $this->input->post('kelas'),
            'semester' => $this->input->post('semester'),
            'tahun_masuk' => $this->input->post('tahun_masuk'),
            'prodi' => $this->input->post('prodi'),
            'konsentrasi' => $this->input->post('konsentrasi')
        ];

        $this->db->update('user_mahasiswa', $datamahasiswa, ['id_mahasiswa' => $this->input->post('id_mahasiswa')]);
    }

    public function delete_mahasiswa($id_mahasiswa)
    {
        $this->db->join('user_mahasiswa', 'user_mahasiswa.id_user = user.id_user');
        $id_user = $this->db->get_where('user', ['user_mahasiswa.id_mahasiswa' => $id_mahasiswa])->row('id_user');

        $this->db->delete('user', ['id_user' => $id_user]);
        $this->db->delete('user_mahasiswa', ['id_mahasiswa' => $id_mahasiswa]);
    }

    public function get_prodi()
    {
        $this->db->order_by('prodi', 'asc');
        return $this->db->get('prodi')->result_array();
    }

    public function add_prodi()
    {
        $data = [
            'prodi' => $this->input->post('prodi'),
            'konsentrasi' => $this->input->post('konsentrasi'),
            'kelas' => $this->input->post('kelas'),
        ];

        $this->db->insert('prodi', $data);
    }

    public function get_anprodi($id_prodi)
    {
        return $this->db->get_where('prodi', ['id_prodi' => $id_prodi])->row();
    }

    public function update_prodi()
    {
        $data = [
            'prodi' => $this->input->post('prodi'),
            'konsentrasi' => $this->input->post('konsentrasi'),
            'kelas' => $this->input->post('kelas'),
        ];

        $this->db->update('prodi', $data, ['id_prodi' => $this->input->post('id_prodi')]);
    }

    public function delete_prodi($id_prodi)
    {
        $this->db->delete('prodi', ['id_prodi' => $id_prodi]);
    }
    
    public function get_manajer()
    {
        $this->db->order_by('nama_manajer', 'asc');
        $this->db->join('user', 'user.id_user = user_manajer.id_user');
        return $this->db->get('user_manajer')->result_array();
    }

    public function add_manajer()
    {
        $data = [
            'username' => $this->input->post('username'),
            'password_hash' => password_hash($this->input->post('username'), PASSWORD_DEFAULT),
            'role' => 'manajer',
            'created_by' => $this->session->userdata('id_user'),
            'created_at' => date('Y-m-d H:i:s'),
            'updated_by' => $this->session->userdata('id_user'),
            'updated_at' => date('Y-m-d H:i:s'),
        ];

        $this->db->insert('user', $data);

        $dataManajer = [
            'id_user' => $this->db->get_where('user', ['username' => $this->input->post('username')])->row('id_user'),
            'nama_manajer' => $this->input->post('nama_manajer'),
            'jenis_kelamin' => $this->input->post('jenis_kelamin'),
            'jabatan' => $this->input->post('jabatan'),
        ];

        $this->db->insert('user_manajer', $dataManajer);
    }

    public function get_anmanajer($id_manajer)
    {
        $this->db->join('user', 'user.id_user = user_manajer.id_user');
        return $this->db->get_where('user_manajer', ['id_manajer' => $id_manajer])->row();
    }

    public function update_manajer()
    {
        $data = [
            'username' => $this->input->post('username'),
            'password_hash' => password_hash($this->input->post('username'), PASSWORD_DEFAULT),
            'role' => 'manajer',
            'updated_by' => $this->session->userdata('id_user'),
            'updated_at' => date('Y-m-d H:i:s'),
        ];

        $this->db->update('user', $data, ['id_user' => $this->input->post('id_user')]);

        $datamanajer = [
            'nama_manajer' => $this->input->post('nama_manajer'),
            'jenis_kelamin' => $this->input->post('jenis_kelamin'),
            'jabatan' => $this->input->post('jabatan'),
        ];

        $this->db->update('user_manajer', $datamanajer, ['id_manajer' => $this->input->post('id_manajer')]);
    }

    public function delete_manajer($id_manajer)
    {
        $this->db->join('user_manajer', 'user_manajer.id_user = user.id_user');
        $id_user = $this->db->get_where('user', ['user_manajer.id_manajer' => $id_manajer])->row('id_user');

        $this->db->delete('user', ['id_user' => $id_user]);
        $this->db->delete('user_manajer', ['id_manajer' => $id_manajer]);
    }
}

/* End of file Management_model.php */
