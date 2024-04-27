<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Ujian_model extends CI_Model
{
    // ADMIN
    public function get_ujian()
    {
        $this->db->join('detail_ujian', 'detail_ujian.id_mahasiswa = user_mahasiswa.id_mahasiswa');
        $this->db->join('ta_ajuan', 'ta_ajuan.id_mahasiswa = user_mahasiswa.id_mahasiswa');
        $this->db->join('ta_ujian', 'ta_ujian.id_ajuan = ta_ajuan.id_ajuan AND ta_ujian.id_detail = detail_ujian.id_detail', 'left');
        $this->db->having('COUNT(ta_ajuan.hasil_verifikasi) / 2 = 3 AND COUNT(detail_ujian.id_mahasiswa) / 2 = 3 AND COUNT(ta_ujian.catatan_penguji) / 2 < 3');
        $this->db->group_by('user_mahasiswa.id_mahasiswa');
        return $this->db->get_where('user_mahasiswa', ['ta_ajuan.hasil_verifikasi' => 'diterima'])->result_array();
    }

    public function proses_create()
    {
        $data1 = [
            'id_penguji' => $this->input->post('id_penguji_1'),
            'id_mahasiswa' => $this->input->post('id_mahasiswa'),
            'ruang' => $this->input->post('ruang'),
            'tgl_ujian' => date('Y-m-d H:i:s', strtotime($this->input->post('tgl_ujian'))),
            'id_admin' => $this->input->post('id_admin'),
        ];

        $this->db->insert('detail_ujian', $data1);

        $data2 = [
            'id_penguji' => $this->input->post('id_penguji_2'),
            'id_mahasiswa' => $this->input->post('id_mahasiswa'),
            'ruang' => $this->input->post('ruang'),
            'tgl_ujian' => date('Y-m-d H:i:s', strtotime($this->input->post('tgl_ujian'))),
            'id_admin' => $this->input->post('id_admin'),
        ];

        $this->db->insert('detail_ujian', $data2);
    }

    public function proses_update()
    {
        $data = [
            'id_penguji' => $this->input->post('id_penguji'),
            'id_mahasiswa' => $this->input->post('id_mahasiswa'),
            'ruang' => $this->input->post('ruang'),
            'tgl_ujian' => date('Y-m-d H:i:s', strtotime($this->input->post('tgl_ujian'))),
            'id_admin' => $this->input->post('id_admin'),
        ];

        $this->db->update('detail_ujian', $data, ['id_detail' => $this->input->post('id_detail')]);
    }

    public function proses_delete($id)
    {
        $this->db->delete('detail_ujian', ['id_detail' => $id]);
    }

    // PENGUJI
    public function proses_add()
    {
        if ($this->input->post('hasil_ujian') == 'diterima') {
            $q = $this->db->get_where('ta_ajuan', ['id_mahasiswa' => $this->input->post('id_mahasiswa')])->result_array();
            foreach ($q as $dt) {
                $this->db->update('ta_ajuan', ['hasil_ujian' => 'ditolak'], ['id_ajuan' => $dt['id_ajuan']]);
            }
        }

        $ph = $this->db->get_where('ta_ujian', ['id_ajuan' => $this->input->post('id_ajuan')])->num_rows();
        if ($ph == 0) {
            $pemberi_hasil = 1;
        } else {
            $pemberi_hasil = 0;
        }

        $data = [
            'id_ajuan' => $this->input->post('id_ajuan'),
            'id_detail' => $this->input->post('id_detail'),
            'pemberi_hasil' => $pemberi_hasil,
            'catatan_penguji' => $this->input->post('catatan_penguji'),
            'submit' => 0
        ];

        $this->db->insert('ta_ujian', $data);
        if ($this->input->post('hasil_ujian')) {
            $this->db->update('ta_ajuan', ['hasil_ujian' => $this->input->post('hasil_ujian')], ['id_ajuan' => $this->input->post('id_ajuan')]);
        }
    }

    public function proses_update_ujian()
    {
        if ($this->input->post('hasil_ujian') == 'diterima') {
            $q = $this->db->get_where('ta_ajuan', ['id_mahasiswa' => $this->input->post('id_mahasiswa')])->result_array();
            foreach ($q as $dt) {
                $this->db->update('ta_ajuan', ['hasil_ujian' => 'ditolak'], ['id_ajuan' => $dt['id_ajuan']]);
            }
        }

        $ph = $this->db->get_where('ta_ujian', ['id_ajuan' => $this->input->post('id_ajuan')])->num_rows();
        if ($ph == 0) {
            $pemberi_hasil = 1;
        } else {
            $pemberi_hasil = 0;
        }

        $data = [
            'id_ajuan' => $this->input->post('id_ajuan'),
            'id_detail' => $this->input->post('id_detail'),
            'pemberi_hasil' => $pemberi_hasil,
            'catatan_penguji' => $this->input->post('catatan_penguji'),
            'submit' => 0
        ];

        $this->db->update('ta_ujian', $data, ['id_ujian' => $this->input->post('id_ujian')]);
        if ($this->input->post('hasil_ujian')) {
            $this->db->update('ta_ajuan', ['hasil_ujian' => $this->input->post('hasil_ujian')], ['id_ajuan' => $this->input->post('id_ajuan')]);
        }
    }

    public function proses_submit($id)
    {
        $this->db->join('user_mahasiswa', 'user_mahasiswa.id_mahasiswa = ta_ajuan.id_mahasiswa');
        $this->db->join('ta_ujian', 'ta_ujian.id_ajuan = ta_ajuan.id_ajuan');
        foreach ($this->db->get_where('ta_ajuan', ['ta_ajuan.id_mahasiswa' => $id])->result_array() as $data) {
            $id_ujian = $data['id_ujian'];

            $this->db->update('ta_ujian', ['submit' => 1], ['id_ujian' => $id_ujian]);
        }

        $this->db->join('user_mahasiswa', 'user_mahasiswa.id_mahasiswa = ta_ajuan.id_mahasiswa');
        $this->db->join('ta_ujian', 'ta_ujian.id_ajuan = ta_ajuan.id_ajuan');
        $this->db->group_by('ta_ajuan.id_ajuan');
        foreach ($this->db->get_where('ta_ajuan', ['ta_ajuan.id_mahasiswa' => $id])->result_array() as $data) {
            if ($data['hasil_ujian'] == 'diterima') {
                $final = $this->db->get_where('judul_final', ['id_ajuan' => $data['id_ajuan']])->num_rows();
                if ($final < 1) {
                    $data = [
                        'id_ajuan' => $data['id_ajuan'],
                        'npm' => $data['npm'],
                        'nama_mahasiswa' => $data['nama_mahasiswa'],
                        'jenis_kelamin' => $data['jenis_kelamin'],
                        'kelas' => $data['kelas'],
                        'tahun_masuk' => $data['tahun_masuk'],
                        'prodi' => $data['prodi'],
                        'konsentrasi' => $data['konsentrasi'],
                        'judul' => $data['judul_ajuan'],
                        'tahun_ajuan' => date('Y', strtotime($data['tgl_ajuan']))
                    ];

                    $this->db->insert('judul_final', $data);
                }
            }
        }
    }
}

/* End of file Ujian_model.php */
