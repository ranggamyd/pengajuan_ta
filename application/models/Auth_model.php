<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth_model extends CI_Model
{
    public function get_anUser($id)
    {
        return $this->db->get_where('user', ['id_user' => $id])->row();
    }

    public function login()
    {
        $user = $this->db->get_where('user', ['username' => $this->input->post('username')]);

        if ($user->num_rows() > 0) {
            $user = $user->row();

            // $isPasswordTrue = password_verify($this->input->post('password'), $user->password_hash);
            $isPasswordTrue = true;

            $isAdmin = $user->role == "admin";
            $isMahasiswa = $user->role == "mahasiswa";
            $isPenguji = $user->role == "penguji";
            $isManajer = $user->role == "manajer";

            if ($isPasswordTrue && $isAdmin) {
                $admin = $this->db->get_where('user_admin', ['id_user' => $user->id_user])->row();
                $data = [
                    'id_user'   => $user->id_user,
                    'id_admin'  => $admin->id_admin,
                    'username'  => $user->username,
                    'nama_admin' => $admin->nama_admin,
                    'jenis_kelamin' => $admin->jenis_kelamin,
                    'jabatan'   => $admin->jabatan,
                    'role'      => $user->role,
                    'status'    => 'logged in',
                ];

                $this->session->set_userdata($data);

                return 'logged in as admin';
            } elseif ($isPasswordTrue && $isMahasiswa) {
                $mahasiswa = $this->db->get_where('user_mahasiswa', ['id_user' => $user->id_user])->row();
                $data = [
                    'id_user'       => $user->id_user,
                    'id_mahasiswa'  => $mahasiswa->id_mahasiswa,
                    'npm'           => $mahasiswa->npm,
                    'nama_mahasiswa' => $mahasiswa->nama_mahasiswa,
                    'jenis_kelamin' => $mahasiswa->jenis_kelamin,
                    'kelas'         => $mahasiswa->kelas,
                    'semester'      => $mahasiswa->semester,
                    'tahun_masuk'   => $mahasiswa->tahun_masuk,
                    'prodi'         => $mahasiswa->prodi,
                    'role'      => $user->role,
                    'status'        => 'logged in',
                ];

                $this->session->set_userdata($data);

                return 'logged in as mahasiswa';
            } elseif ($isPasswordTrue && $isPenguji) {
                $penguji = $this->db->get_where('user_penguji', ['id_user' => $user->id_user])->row();
                $data = [
                    'id_user'       => $user->id_user,
                    'id_penguji'  => $penguji->id_penguji,
                    'nik'           => $penguji->nik,
                    'nama_penguji' => $penguji->nama_penguji,
                    'jenis_kelamin' => $penguji->jenis_kelamin,
                    'jafung'         => $penguji->jafung,
                    'role'      => $user->role,
                    'status'        => 'logged in',
                ];

                $this->session->set_userdata($data);

                return 'logged in as penguji';
            } elseif ($isPasswordTrue && $isManajer) {
                $manajer = $this->db->get_where('user_manajer', ['id_user' => $user->id_user])->row();
                $data = [
                    'id_user'       => $user->id_user,
                    'id_manajer'  => $manajer->id_manajer,
                    'username'  => $this->input->post('username'),
                    // 'nik'           => $manajer->nik,
                    'nama_manajer' => $manajer->nama_manajer,
                    'jenis_kelamin' => $manajer->jenis_kelamin,
                    'jabatan'         => $manajer->jabatan,
                    'role'      => $user->role,
                    'status'        => 'logged in',
                ];

                $this->session->set_userdata($data);

                return 'logged in as manajer';
            } else {
                return false;
            }
        } else {
            return false;
        };
    }

    public function setting()
    {
        $config['file_name']            = $this->session->userdata('id');
        $config['upload_path']          = './assets/images/avatar';
        $config['allowed_types']        = 'jpg|png|jpeg';
        $config['overwrite']            = TRUE;
        $config['max_size']             = 5000;

        $this->load->library('upload', $config);

        if ($this->upload->do_upload('avatar')) {
            $image = $this->upload->data('file_name');
        } else {
            $image = $this->input->post('prevAvatar');
        }

        $data = [
            'username'  => $this->input->post('username'),
            'password'  => $this->input->post('password'),
            'full_name' => $this->input->post('full_name'),
            'email'     => $this->input->post('email'),
            'avatar'    => $image
        ];

        $this->db->update('user', $data, ['id' => $this->session->userdata('id')]);

        // $user = $this->db->get_where('user', $data);

        // if ($user->num_rows() > 0) {

        //     $user = $user->row();

        //     $data = [
        //         'id'                => $user->id,
        //         'full_name'         => $user->full_name,
        //         'email'             => $user->email,
        //         'username'          => $user->username,
        //         'password'          => $user->password,
        //         'avatar'            => $user->avatar,
        //         'status'            => 'logged in',
        //     ];

        $data = [
            'id' => $this->session->userdata('id'),
            'status' => 'logged in'
        ];

        $this->session->set_userdata($data);
        return 'success';
        // } else {
        //     return 'failed';
        // };
    }

    public function logout()
    {
        $this->session->sess_destroy();
    }
}
