<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Ajuan_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        date_default_timezone_set('Asia/Jakarta');
    }

    // MAHASISWA
    public function proses_add()
    {
        $data = [
            'id_mahasiswa' => $this->session->userdata('id_mahasiswa'),
            'judul_ajuan' => $this->input->post('judul_ajuan'),
            'tgl_ajuan' => date('Y-m-d H:i:s'),
            'submit' => 0,
            'hasil_verifikasi' => 'belum diverifikasi',
            'hasil_ujian' => 'belum diuji'
        ];

        $this->db->insert('ta_ajuan', $data);
    }

    public function proses_update()
    {
        $data = [
            'id_mahasiswa' => $this->session->userdata('id_mahasiswa'),
            'judul_ajuan' => $this->input->post('judul_ajuan'),
            'tgl_ajuan' => date('Y-m-d H:i:s'),
            'submit' => 0,
            'hasil_verifikasi' => 'belum diverifikasi',
            'hasil_ujian' => 'belum diuji'
        ];

        $this->db->update('ta_ajuan', $data, ['id_ajuan' => $this->input->post('id_ajuan')]);
    }

    public function proses_submit($id)
    {
        foreach ($this->db->get_where('ta_ajuan', ['id_mahasiswa' => $id])->result_array() as $data) {
            $this->db->update('ta_ajuan', ['submit' => 1], ['id_ajuan' => $data['id_ajuan']]);
        }
    }

    public function update_password()
    {
        $this->db->update('user', ['password_hash' => password_hash($this->input->post('new'), PASSWORD_DEFAULT)], ['id_user' => $this->session->userdata('id_user')]);
    }

    public function cek_password()
    {
        $user = $this->db->get_where('user', ['username' => $this->input->post('username')]);

        if ($user->num_rows() > 0) {
            $user = $user->row();
            $isMahasiswa = $user->role == "mahasiswa";

            $isPasswordTrue = password_verify($this->input->post('past_password'), $user->password_hash);

            if ($isPasswordTrue && $isMahasiswa) {
                return $user;
            } else {
                return false;
            }
        }
    }

    // ADMIN
    public function get_ajuan()
    {
        $this->db->join('ta_ajuan', 'ta_ajuan.id_mahasiswa = user_mahasiswa.id_mahasiswa');
        $this->db->group_by('user_mahasiswa.id_mahasiswa');
        return $this->db->get_where('user_mahasiswa', ['ta_ajuan.submit' => 1])->result_array();
    }

    public function get_ajuan_nonsubmitted()
    {
        $this->db->join('ta_ajuan', 'ta_ajuan.id_mahasiswa = user_mahasiswa.id_mahasiswa');
        $this->db->group_by('user_mahasiswa.id_mahasiswa');
        return $this->db->get_where('user_mahasiswa', ['ta_ajuan.submit' => 0])->result_array();
    }

    public function proses_verifikasi()
    {
        $data = [
            'id_ajuan' => $this->input->post('id_ajuan'),
            'id_admin' => $this->input->post('id_admin'),
            'tgl_verifikasi' => date('Y-m-d H:i:s'),
            'catatan_verifikasi' => $this->input->post('catatan_verifikasi'),
            'submit' => 0
        ];

        $this->db->insert('ta_verifikasi', $data);
        $this->db->update('ta_ajuan', ['hasil_verifikasi' => $this->input->post('hasil_verifikasi')], ['id_ajuan' => $this->input->post('id_ajuan')]);
    }

    public function proses_update_verifikasi()
    {
        $data = [
            'id_admin' => $this->input->post('id_admin'),
            'tgl_verifikasi' => date('Y-m-d H:i:s'),
            'catatan_verifikasi' => $this->input->post('catatan_verifikasi'),
            'submit' => 0
        ];

        $this->db->update('ta_verifikasi', $data, ['id_ajuan' => $this->input->post('id_ajuan')]);
        $this->db->update('ta_ajuan', ['hasil_verifikasi' => $this->input->post('hasil_verifikasi')], ['id_ajuan' => $this->input->post('id_ajuan')]);
    }

    public function proses_submit_verifikasi($id)
    {
        foreach ($this->db->get_where('ta_ajuan', ['id_mahasiswa' => $id])->result_array() as $data) {
            $id_ajuan = $data['id_ajuan'];

            $this->db->update('ta_verifikasi', ['submit' => 1], ['id_ajuan' => $id_ajuan]);
        }
    }

    public function get_verified_ajuan()
    {
        $this->db->join('detail_ujian', 'detail_ujian.id_mahasiswa = user_mahasiswa.id_mahasiswa','left');
        $this->db->join('ta_ajuan', 'ta_ajuan.id_mahasiswa = user_mahasiswa.id_mahasiswa');
        $this->db->join('ta_verifikasi', 'ta_verifikasi.id_ajuan = ta_ajuan.id_ajuan');
        $this->db->having('COUNT(ta_ajuan.hasil_verifikasi) = 3 AND COUNT(detail_ujian.id_mahasiswa) / 2 < 3');
        $this->db->group_by('user_mahasiswa.id_mahasiswa');
        return $this->db->get_where('user_mahasiswa', ['ta_verifikasi.submit' => 1, 'ta_ajuan.hasil_verifikasi' => 'diterima'])->result_array();
    }

    public function update_password_admin()
    {
        $this->db->update('user', ['password_hash' => password_hash($this->input->post('new'), PASSWORD_DEFAULT)], ['id_user' => $this->session->userdata('id_user')]);
    }

    public function cek_password_admin()
    {
        $user = $this->db->get_where('user', ['username' => $this->input->post('username')]);

        if ($user->num_rows() > 0) {
            $user = $user->row();
            $isAdmin = $user->role == "admin";

            $isPasswordTrue = password_verify($this->input->post('past_password'), $user->password_hash);

            if ($isPasswordTrue && $isAdmin) {
                return $user;
            } else {
                return false;
            }
        }
    }

    // PENGUJI
    public function update_password_penguji()
    {
        $this->db->update('user', ['password_hash' => password_hash($this->input->post('new'), PASSWORD_DEFAULT)], ['id_user' => $this->session->userdata('id_user')]);
    }

    public function cek_password_penguji()
    {
        $user = $this->db->get_where('user', ['username' => $this->input->post('username')]);

        if ($user->num_rows() > 0) {
            $user = $user->row();
            $isMahasiswa = $user->role == "penguji";

            $isPasswordTrue = password_verify($this->input->post('past_password'), $user->password_hash);

            if ($isPasswordTrue && $isMahasiswa) {
                return $user;
            } else {
                return false;
            }
        }
    }

    // MANAJER
    public function update_password_manajer()
    {
        $this->db->update('user', ['password_hash' => password_hash($this->input->post('new'), PASSWORD_DEFAULT)], ['id_user' => $this->session->userdata('id_user')]);
    }

    public function cek_password_manajer()
    {
        $user = $this->db->get_where('user', ['username' => $this->input->post('username')]);

        if ($user->num_rows() > 0) {
            $user = $user->row();
            $isManajer = $user->role == "manajer";

            $isPasswordTrue = password_verify($this->input->post('past_password'), $user->password_hash);

            if ($isPasswordTrue && $isManajer) {
                return $user;
            } else {
                return false;
            }
        }
    }
}

/* End of file Ajuan_model.php */
