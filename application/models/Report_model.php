<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Report_model extends CI_Model
{
    public function get_verified()
    {
        return $this->db->query(
            "SELECT 
                `user_mahasiswa`.`id_mahasiswa`, 
                `user_mahasiswa`.`npm`, 
                `user_mahasiswa`.`nama_mahasiswa`, 
                `user_mahasiswa`.`jenis_kelamin`, 
                `user_mahasiswa`.`kelas`, 
                `user_mahasiswa`.`tahun_masuk`, 
                `user_mahasiswa`.`semester`, 
                `user_mahasiswa`.`prodi`, 
                `user_mahasiswa`.`konsentrasi`, 
                SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(`ta_ajuan`.`judul_ajuan`), ',' , 1), ',' , -1) AS judul_1, 
                SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(`ta_ajuan`.`judul_ajuan`), ',' , 2), ',' , -1) AS judul_2, 
                SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(`ta_ajuan`.`judul_ajuan`), ',' , 3), ',' , -1) AS judul_3 
            FROM `user_mahasiswa` JOIN `ta_ajuan` ON `ta_ajuan`.`id_mahasiswa` = `user_mahasiswa`.`id_mahasiswa` 
            WHERE `ta_ajuan`.`hasil_verifikasi` = 'diterima' 
            GROUP BY `user_mahasiswa`.`id_mahasiswa` 
            HAVING COUNT(`ta_ajuan`.`id_ajuan`) = 3
            "
        )->result_array();
    }

    public function get_verified_filter()
    {
        $kelas = $this->input->post('kelas');
        $tahun_masuk = $this->input->post('tahun_masuk');
        $prodi = $this->input->post('prodi');

        if (isset($_GET['kelas'])) {
            $kelas = $_GET['kelas'];
        }
        if (isset($_GET['tahun_masuk'])) {
            $tahun_masuk = $_GET['tahun_masuk'];
        }
        if (isset($_GET['prodi'])) {
            $prodi = $_GET['prodi'];
        }

        if ($kelas && $tahun_masuk && $prodi) {
            $where = "`user_mahasiswa`.`kelas` = '" . $kelas . "' AND `user_mahasiswa`.`tahun_masuk` = '" . $tahun_masuk . "' AND `user_mahasiswa`.`prodi` = '" . $prodi . "'";
        } elseif ($kelas && $tahun_masuk) {
            $where = "`user_mahasiswa`.`kelas` = '" . $kelas . "' AND `user_mahasiswa`.`tahun_masuk` = '" . $tahun_masuk . "'";
        } elseif ($tahun_masuk && $prodi) {
            $where = "`user_mahasiswa`.`tahun_masuk` = '" . $tahun_masuk . "' AND `user_mahasiswa`.`prodi` = '" . $prodi . "'";
        } elseif ($kelas && $prodi) {
            $where = "`user_mahasiswa`.`kelas` = '" . $kelas . "' AND `user_mahasiswa`.`prodi` = '" . $prodi . "'";
        } elseif ($kelas) {
            $where = "`user_mahasiswa`.`kelas` = '" . $kelas . "'";
        } elseif ($tahun_masuk) {
            $where = "`user_mahasiswa`.`tahun_masuk` = '" . $tahun_masuk . "'";
        } elseif ($tahun_masuk) {
            $where = "`user_mahasiswa`.`prodi` = '" . $prodi . "'";
        } else {
            $where = "`user_mahasiswa`.`kelas` = '" . $kelas . "' OR `user_mahasiswa`.`tahun_masuk` = '" . $tahun_masuk . "' OR `user_mahasiswa`.`prodi` = '" . $prodi . "'";
        }

        return $this->db->query(
            "SELECT 
                `user_mahasiswa`.`id_mahasiswa`, 
                `user_mahasiswa`.`npm`, 
                `user_mahasiswa`.`nama_mahasiswa`, 
                `user_mahasiswa`.`jenis_kelamin`, 
                `user_mahasiswa`.`kelas`, 
                `user_mahasiswa`.`tahun_masuk`, 
                `user_mahasiswa`.`semester`, 
                `user_mahasiswa`.`prodi`, 
                `user_mahasiswa`.`konsentrasi`, 
                SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(`ta_ajuan`.`judul_ajuan`), ',' , 1), ',' , -1) AS judul_1, 
                SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(`ta_ajuan`.`judul_ajuan`), ',' , 2), ',' , -1) AS judul_2, 
                SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(`ta_ajuan`.`judul_ajuan`), ',' , 3), ',' , -1) AS judul_3 
            FROM `user_mahasiswa` JOIN `ta_ajuan` ON `ta_ajuan`.`id_mahasiswa` = `user_mahasiswa`.`id_mahasiswa` 
            WHERE $where AND `ta_ajuan`.`hasil_verifikasi` = 'diterima'
            GROUP BY `user_mahasiswa`.`id_mahasiswa` 
            HAVING COUNT(`ta_ajuan`.`id_ajuan`) = 3
            "
        )->result_array();
    }

    public function get_unVerified()
    {
        return $this->db->query(
            "SELECT 
                `user_mahasiswa`.`id_mahasiswa`, 
                `user_mahasiswa`.`npm`, 
                `user_mahasiswa`.`nama_mahasiswa`, 
                `user_mahasiswa`.`jenis_kelamin`, 
                `user_mahasiswa`.`kelas`, 
                `user_mahasiswa`.`tahun_masuk`, 
                `user_mahasiswa`.`semester`, 
                `user_mahasiswa`.`prodi`, 
                `user_mahasiswa`.`konsentrasi`, 
                `ta_ajuan`.`judul_ajuan` AS judul
                -- SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(`ta_ajuan`.`judul_ajuan`), ',' , 1), ',' , -1) AS judul_1, 
                -- SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(`ta_ajuan`.`judul_ajuan`), ',' , 2), ',' , -1) AS judul_2, 
                -- SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(`ta_ajuan`.`judul_ajuan`), ',' , 3), ',' , -1) AS judul_3 
            FROM `user_mahasiswa` JOIN `ta_ajuan` ON `ta_ajuan`.`id_mahasiswa` = `user_mahasiswa`.`id_mahasiswa` 
            WHERE `ta_ajuan`.`hasil_verifikasi` = 'ditolak'
            ORDER BY `user_mahasiswa`.`nama_mahasiswa` ASC
            -- GROUP BY `user_mahasiswa`.`id_mahasiswa` 
            -- HAVING COUNT(`ta_ajuan`.`id_ajuan`) = 3
            "
        )->result_array();
    }

    public function get_unVerified_filter()
    {
        $kelas = $this->input->post('kelas');
        $tahun_masuk = $this->input->post('tahun_masuk');
        $prodi = $this->input->post('prodi');

        if (isset($_GET['kelas'])) {
            $kelas = $_GET['kelas'];
        }
        if (isset($_GET['tahun_masuk'])) {
            $tahun_masuk = $_GET['tahun_masuk'];
        }
        if (isset($_GET['prodi'])) {
            $prodi = $_GET['prodi'];
        }

        if ($kelas && $tahun_masuk && $prodi) {
            $where = "`user_mahasiswa`.`kelas` = '" . $kelas . "' AND `user_mahasiswa`.`tahun_masuk` = '" . $tahun_masuk . "' AND `user_mahasiswa`.`prodi` = '" . $prodi . "'";
        } elseif ($kelas && $tahun_masuk) {
            $where = "`user_mahasiswa`.`kelas` = '" . $kelas . "' AND `user_mahasiswa`.`tahun_masuk` = '" . $tahun_masuk . "'";
        } elseif ($tahun_masuk && $prodi) {
            $where = "`user_mahasiswa`.`tahun_masuk` = '" . $tahun_masuk . "' AND `user_mahasiswa`.`prodi` = '" . $prodi . "'";
        } elseif ($kelas && $prodi) {
            $where = "`user_mahasiswa`.`kelas` = '" . $kelas . "' AND `user_mahasiswa`.`prodi` = '" . $prodi . "'";
        } elseif ($kelas) {
            $where = "`user_mahasiswa`.`kelas` = '" . $kelas . "'";
        } elseif ($tahun_masuk) {
            $where = "`user_mahasiswa`.`tahun_masuk` = '" . $tahun_masuk . "'";
        } elseif ($tahun_masuk) {
            $where = "`user_mahasiswa`.`prodi` = '" . $prodi . "'";
        } else {
            $where = "`user_mahasiswa`.`kelas` = '" . $kelas . "' OR `user_mahasiswa`.`tahun_masuk` = '" . $tahun_masuk . "' OR `user_mahasiswa`.`prodi` = '" . $prodi . "'";
        }

        return $this->db->query(
            "SELECT 
                `user_mahasiswa`.`id_mahasiswa`, 
                `user_mahasiswa`.`npm`, 
                `user_mahasiswa`.`nama_mahasiswa`, 
                `user_mahasiswa`.`jenis_kelamin`, 
                `user_mahasiswa`.`kelas`, 
                `user_mahasiswa`.`tahun_masuk`, 
                `user_mahasiswa`.`semester`, 
                `user_mahasiswa`.`prodi`, 
                `user_mahasiswa`.`konsentrasi`, 
                `ta_ajuan`.`judul_ajuan` AS judul
                -- SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(`ta_ajuan`.`judul_ajuan`), ',' , 1), ',' , -1) AS judul_1, 
                -- SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(`ta_ajuan`.`judul_ajuan`), ',' , 2), ',' , -1) AS judul_2, 
                -- SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(`ta_ajuan`.`judul_ajuan`), ',' , 3), ',' , -1) AS judul_3 
            FROM `user_mahasiswa` JOIN `ta_ajuan` ON `ta_ajuan`.`id_mahasiswa` = `user_mahasiswa`.`id_mahasiswa` 
            WHERE $where AND `ta_ajuan`.`hasil_verifikasi` = 'ditolak'
            ORDER BY `user_mahasiswa`.`nama_mahasiswa` ASC
            "
        )->result_array();
    }

    public function get_tested()
    {
        // $query = UserMahasiswa::find()
        //     ->select([
        //         'user_mahasiswa.id_mahasiswa',
        //         'user_mahasiswa.id_user',
        //         'user_mahasiswa.npm',
        //         'user_mahasiswa.nama_mahasiswa',
        //         'user_mahasiswa.jenis_kelamin',
        //         'user_mahasiswa.kelas',
        //         'user_mahasiswa.semester',
        //         'user_mahasiswa.tahun_masuk',
        //         'user_mahasiswa.prodi',
        //         'ta_ajuan.judul_ajuan judul',
        //         'ta_ajuan.hasil_ujian',
        //         "SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(user_penguji.nama_penguji SEPARATOR '<@@>'),'<@@>',1),'<@@>',-1) penguji_1",
        //         "SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(user_penguji.nama_penguji SEPARATOR '<@@>'),'<@@>',2),'<@@>',-1) penguji_2",
        //         "SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(ta_ujian.catatan_penguji SEPARATOR '<@@>'),'<@@>',1),'<@@>',-1) catatan_penguji_1",
        //         "SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(ta_ujian.catatan_penguji SEPARATOR '<@@>'),'<@@>',2),'<@@>',-1) catatan_penguji_2"
        //     ])
        //     ->join('INNER JOIN', 'ta_ajuan', 'ta_ajuan.id_mahasiswa = user_mahasiswa.id_mahasiswa')
        //     ->join('LEFT JOIN', 'detail_ujian', 'detail_ujian.id_mahasiswa = user_mahasiswa.id_mahasiswa')
        //     ->join('LEFT JOIN', 'ta_ujian', 'ta_ujian.id_detail = detail_ujian.id_detail AND ta_ujian.id_ajuan = ta_ajuan.id_ajuan')
        //     ->join('INNER JOIN', 'user_penguji', 'detail_ujian.id_penguji = user_penguji.id_penguji')
        //     ->where(['ta_ajuan.hasil_ujian' => Yii::$app->params['hasil_ujian'][1]])
        //     ->groupBy(['user_mahasiswa.id_mahasiswa', 'ta_ajuan.judul_ajuan'])
        //     ->having('COUNT(ta_ujian.catatan_penguji) = 2');

        return $this->db->query(
            "SELECT 
                `user_mahasiswa`.`id_mahasiswa`, 
                `user_mahasiswa`.`npm`, 
                `user_mahasiswa`.`nama_mahasiswa`, 
                `user_mahasiswa`.`jenis_kelamin`, 
                `user_mahasiswa`.`kelas`, 
                `user_mahasiswa`.`tahun_masuk`, 
                `user_mahasiswa`.`semester`, 
                `user_mahasiswa`.`prodi`, 
                `user_mahasiswa`.`konsentrasi`, 
                `ta_ajuan`.`judul_ajuan` AS judul, 
                `ta_ajuan`.`hasil_ujian`, 
                SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(user_penguji.nama_penguji SEPARATOR '<@@>'),'<@@>',1),'<@@>',-1) penguji_1,
                SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(user_penguji.nama_penguji SEPARATOR '<@@>'),'<@@>',2),'<@@>',-1) penguji_2,
                SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(ta_ujian.catatan_penguji SEPARATOR '<@@>'),'<@@>',1),'<@@>',-1) catatan_penguji_1,
                SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(ta_ujian.catatan_penguji SEPARATOR '<@@>'),'<@@>',2),'<@@>',-1) catatan_penguji_2
            FROM `user_mahasiswa`
            INNER JOIN `ta_ajuan` ON `ta_ajuan`.`id_mahasiswa` = `user_mahasiswa`.`id_mahasiswa` 
            LEFT JOIN `detail_ujian` ON `detail_ujian`.`id_mahasiswa` = `user_mahasiswa`.`id_mahasiswa` 
            LEFT JOIN `ta_ujian` ON `ta_ujian`.`id_detail` = `detail_ujian`.`id_detail` AND `ta_ujian`.`id_ajuan` = `ta_ajuan`.`id_ajuan` 
            INNER JOIN `user_penguji` ON `user_penguji`.`id_penguji` = `detail_ujian`.`id_penguji`
            WHERE `ta_ajuan`.`hasil_ujian` = 'diterima' 
            GROUP BY 
                `user_mahasiswa`.`id_mahasiswa`,
                `ta_ajuan`.`judul_ajuan`
            HAVING COUNT(`ta_ujian`.`catatan_penguji`) = 2
            "
        )->result_array();
    }

    public function get_tested_filter()
    {
        $kelas = $this->input->post('kelas');
        $tahun_masuk = $this->input->post('tahun_masuk');
        $prodi = $this->input->post('prodi');

        if (isset($_GET['kelas'])) {
            $kelas = $_GET['kelas'];
        }
        if (isset($_GET['tahun_masuk'])) {
            $tahun_masuk = $_GET['tahun_masuk'];
        }
        if (isset($_GET['prodi'])) {
            $prodi = $_GET['prodi'];
        }

        if ($kelas && $tahun_masuk && $prodi) {
            $where = "`user_mahasiswa`.`kelas` = '" . $kelas . "' AND `user_mahasiswa`.`tahun_masuk` = '" . $tahun_masuk . "' AND `user_mahasiswa`.`prodi` = '" . $prodi . "'";
        } elseif ($kelas && $tahun_masuk) {
            $where = "`user_mahasiswa`.`kelas` = '" . $kelas . "' AND `user_mahasiswa`.`tahun_masuk` = '" . $tahun_masuk . "'";
        } elseif ($tahun_masuk && $prodi) {
            $where = "`user_mahasiswa`.`tahun_masuk` = '" . $tahun_masuk . "' AND `user_mahasiswa`.`prodi` = '" . $prodi . "'";
        } elseif ($kelas && $prodi) {
            $where = "`user_mahasiswa`.`kelas` = '" . $kelas . "' AND `user_mahasiswa`.`prodi` = '" . $prodi . "'";
        } elseif ($kelas) {
            $where = "`user_mahasiswa`.`kelas` = '" . $kelas . "'";
        } elseif ($tahun_masuk) {
            $where = "`user_mahasiswa`.`tahun_masuk` = '" . $tahun_masuk . "'";
        } elseif ($tahun_masuk) {
            $where = "`user_mahasiswa`.`prodi` = '" . $prodi . "'";
        } else {
            $where = "`user_mahasiswa`.`kelas` = '" . $kelas . "' OR `user_mahasiswa`.`tahun_masuk` = '" . $tahun_masuk . "' OR `user_mahasiswa`.`prodi` = '" . $prodi . "'";
        }

        return $this->db->query(
            "SELECT 
                `user_mahasiswa`.`id_mahasiswa`, 
                `user_mahasiswa`.`npm`, 
                `user_mahasiswa`.`nama_mahasiswa`, 
                `user_mahasiswa`.`jenis_kelamin`, 
                `user_mahasiswa`.`kelas`, 
                `user_mahasiswa`.`tahun_masuk`, 
                `user_mahasiswa`.`semester`, 
                `user_mahasiswa`.`prodi`, 
                `user_mahasiswa`.`konsentrasi`, 
                `ta_ajuan`.`judul_ajuan` AS judul, 
                `ta_ajuan`.`hasil_ujian`, 
                SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(user_penguji.nama_penguji SEPARATOR '<@@>'),'<@@>',1),'<@@>',-1) penguji_1,
                SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(user_penguji.nama_penguji SEPARATOR '<@@>'),'<@@>',2),'<@@>',-1) penguji_2,
                SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(ta_ujian.catatan_penguji SEPARATOR '<@@>'),'<@@>',1),'<@@>',-1) catatan_penguji_1,
                SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(ta_ujian.catatan_penguji SEPARATOR '<@@>'),'<@@>',2),'<@@>',-1) catatan_penguji_2
            FROM `user_mahasiswa`
            INNER JOIN `ta_ajuan` ON `ta_ajuan`.`id_mahasiswa` = `user_mahasiswa`.`id_mahasiswa` 
            LEFT JOIN `detail_ujian` ON `detail_ujian`.`id_mahasiswa` = `user_mahasiswa`.`id_mahasiswa` 
            LEFT JOIN `ta_ujian` ON `ta_ujian`.`id_detail` = `detail_ujian`.`id_detail` AND `ta_ujian`.`id_ajuan` = `ta_ajuan`.`id_ajuan` 
            INNER JOIN `user_penguji` ON `user_penguji`.`id_penguji` = `detail_ujian`.`id_penguji`
            WHERE $where AND `ta_ajuan`.`hasil_ujian` = 'diterima' 
            GROUP BY 
                `user_mahasiswa`.`id_mahasiswa`,
                `ta_ajuan`.`judul_ajuan`
            HAVING COUNT(`ta_ujian`.`catatan_penguji`) = 2
            "
        )->result_array();
    }

    public function get_unTested()
    {
        // $query = UserMahasiswa::find()
        //     ->select([
        //         'user_mahasiswa.id_mahasiswa',
        //         'user_mahasiswa.id_user',
        //         'user_mahasiswa.npm',
        //         'user_mahasiswa.nama_mahasiswa',
        //         'user_mahasiswa.jenis_kelamin',
        //         'user_mahasiswa.kelas',
        //         'user_mahasiswa.semester',
        //         'user_mahasiswa.tahun_masuk',
        //         'user_mahasiswa.prodi',
        //         'ta_ajuan.judul_ajuan judul',
        //         'ta_ajuan.hasil_ujian',
        //         "SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(user_penguji.nama_penguji SEPARATOR '<@@>'),'<@@>',1),'<@@>',-1) penguji_1",
        //         "SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(user_penguji.nama_penguji SEPARATOR '<@@>'),'<@@>',2),'<@@>',-1) penguji_2",
        //         "SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(ta_ujian.catatan_penguji SEPARATOR '<@@>'),'<@@>',1),'<@@>',-1) catatan_penguji_1",
        //         "SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(ta_ujian.catatan_penguji SEPARATOR '<@@>'),'<@@>',2),'<@@>',-1) catatan_penguji_2"
        //     ])
        //     ->join('INNER JOIN', 'ta_ajuan', 'ta_ajuan.id_mahasiswa = user_mahasiswa.id_mahasiswa')
        //     ->join('LEFT JOIN', 'detail_ujian', 'detail_ujian.id_mahasiswa = user_mahasiswa.id_mahasiswa')
        //     ->join('LEFT JOIN', 'ta_ujian', 'ta_ujian.id_detail = detail_ujian.id_detail AND ta_ujian.id_ajuan = ta_ajuan.id_ajuan')
        //     ->join('INNER JOIN', 'user_penguji', 'detail_ujian.id_penguji = user_penguji.id_penguji')
        //     ->where(['ta_ajuan.hasil_ujian' => Yii::$app->params['hasil_ujian'][1]])
        //     ->groupBy(['user_mahasiswa.id_mahasiswa', 'ta_ajuan.judul_ajuan'])
        //     ->having('COUNT(ta_ujian.catatan_penguji) = 2');

        return $this->db->query(
            "SELECT 
                `user_mahasiswa`.`id_mahasiswa`, 
                `user_mahasiswa`.`npm`, 
                `user_mahasiswa`.`nama_mahasiswa`, 
                `user_mahasiswa`.`jenis_kelamin`, 
                `user_mahasiswa`.`kelas`, 
                `user_mahasiswa`.`tahun_masuk`, 
                `user_mahasiswa`.`semester`, 
                `user_mahasiswa`.`prodi`, 
                `user_mahasiswa`.`konsentrasi`, 
                `ta_ajuan`.`judul_ajuan` AS judul, 
                `ta_ajuan`.`hasil_ujian`, 
                SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(user_penguji.nama_penguji SEPARATOR '<@@>'),'<@@>',1),'<@@>',-1) penguji_1,
                SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(user_penguji.nama_penguji SEPARATOR '<@@>'),'<@@>',2),'<@@>',-1) penguji_2,
                SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(ta_ujian.catatan_penguji SEPARATOR '<@@>'),'<@@>',1),'<@@>',-1) catatan_penguji_1,
                SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(ta_ujian.catatan_penguji SEPARATOR '<@@>'),'<@@>',2),'<@@>',-1) catatan_penguji_2
            FROM `user_mahasiswa`
            INNER JOIN `ta_ajuan` ON `ta_ajuan`.`id_mahasiswa` = `user_mahasiswa`.`id_mahasiswa` 
            LEFT JOIN `detail_ujian` ON `detail_ujian`.`id_mahasiswa` = `user_mahasiswa`.`id_mahasiswa` 
            LEFT JOIN `ta_ujian` ON `ta_ujian`.`id_detail` = `detail_ujian`.`id_detail` AND `ta_ujian`.`id_ajuan` = `ta_ajuan`.`id_ajuan` 
            INNER JOIN `user_penguji` ON `user_penguji`.`id_penguji` = `detail_ujian`.`id_penguji`
            WHERE `ta_ajuan`.`hasil_ujian` = 'ditolak' 
            GROUP BY 
                `user_mahasiswa`.`id_mahasiswa`,
                `ta_ajuan`.`judul_ajuan`
            HAVING COUNT(`ta_ujian`.`catatan_penguji`) = 2
            "
        )->result_array();
    }

    public function get_unTested_filter()
    {
        $kelas = $this->input->post('kelas');
        $tahun_masuk = $this->input->post('tahun_masuk');
        $prodi = $this->input->post('prodi');

        if (isset($_GET['kelas'])) {
            $kelas = $_GET['kelas'];
        }
        if (isset($_GET['tahun_masuk'])) {
            $tahun_masuk = $_GET['tahun_masuk'];
        }
        if (isset($_GET['prodi'])) {
            $prodi = $_GET['prodi'];
        }

        if ($kelas && $tahun_masuk && $prodi) {
            $where = "`user_mahasiswa`.`kelas` = '" . $kelas . "' AND `user_mahasiswa`.`tahun_masuk` = '" . $tahun_masuk . "' AND `user_mahasiswa`.`prodi` = '" . $prodi . "'";
        } elseif ($kelas && $tahun_masuk) {
            $where = "`user_mahasiswa`.`kelas` = '" . $kelas . "' AND `user_mahasiswa`.`tahun_masuk` = '" . $tahun_masuk . "'";
        } elseif ($tahun_masuk && $prodi) {
            $where = "`user_mahasiswa`.`tahun_masuk` = '" . $tahun_masuk . "' AND `user_mahasiswa`.`prodi` = '" . $prodi . "'";
        } elseif ($kelas && $prodi) {
            $where = "`user_mahasiswa`.`kelas` = '" . $kelas . "' AND `user_mahasiswa`.`prodi` = '" . $prodi . "'";
        } elseif ($kelas) {
            $where = "`user_mahasiswa`.`kelas` = '" . $kelas . "'";
        } elseif ($tahun_masuk) {
            $where = "`user_mahasiswa`.`tahun_masuk` = '" . $tahun_masuk . "'";
        } elseif ($tahun_masuk) {
            $where = "`user_mahasiswa`.`prodi` = '" . $prodi . "'";
        } else {
            $where = "`user_mahasiswa`.`kelas` = '" . $kelas . "' OR `user_mahasiswa`.`tahun_masuk` = '" . $tahun_masuk . "' OR `user_mahasiswa`.`prodi` = '" . $prodi . "'";
        }

        return $this->db->query(
            "SELECT 
                `user_mahasiswa`.`id_mahasiswa`, 
                `user_mahasiswa`.`npm`, 
                `user_mahasiswa`.`nama_mahasiswa`, 
                `user_mahasiswa`.`jenis_kelamin`, 
                `user_mahasiswa`.`kelas`, 
                `user_mahasiswa`.`tahun_masuk`, 
                `user_mahasiswa`.`semester`, 
                `user_mahasiswa`.`prodi`, 
                `user_mahasiswa`.`konsentrasi`, 
                `ta_ajuan`.`judul_ajuan` AS judul, 
                `ta_ajuan`.`hasil_ujian`, 
                SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(user_penguji.nama_penguji SEPARATOR '<@@>'),'<@@>',1),'<@@>',-1) penguji_1,
                SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(user_penguji.nama_penguji SEPARATOR '<@@>'),'<@@>',2),'<@@>',-1) penguji_2,
                SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(ta_ujian.catatan_penguji SEPARATOR '<@@>'),'<@@>',1),'<@@>',-1) catatan_penguji_1,
                SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(ta_ujian.catatan_penguji SEPARATOR '<@@>'),'<@@>',2),'<@@>',-1) catatan_penguji_2
            FROM `user_mahasiswa`
            INNER JOIN `ta_ajuan` ON `ta_ajuan`.`id_mahasiswa` = `user_mahasiswa`.`id_mahasiswa` 
            LEFT JOIN `detail_ujian` ON `detail_ujian`.`id_mahasiswa` = `user_mahasiswa`.`id_mahasiswa` 
            LEFT JOIN `ta_ujian` ON `ta_ujian`.`id_detail` = `detail_ujian`.`id_detail` AND `ta_ujian`.`id_ajuan` = `ta_ajuan`.`id_ajuan` 
            INNER JOIN `user_penguji` ON `user_penguji`.`id_penguji` = `detail_ujian`.`id_penguji`
            WHERE $where AND `ta_ajuan`.`hasil_ujian` = 'ditolak' 
            GROUP BY 
                `user_mahasiswa`.`id_mahasiswa`,
                `ta_ajuan`.`judul_ajuan`
            HAVING COUNT(`ta_ujian`.`catatan_penguji`) = 2
            "
        )->result_array();
    }

    public function get_mahasiswa()
    {
        return $this->db->query(
            "SELECT 
                `user_mahasiswa`.`id_mahasiswa`, 
                `user_mahasiswa`.`npm`, 
                `user_mahasiswa`.`nama_mahasiswa`, 
                `user_mahasiswa`.`jenis_kelamin`, 
                `user_mahasiswa`.`kelas`, 
                `user_mahasiswa`.`tahun_masuk`, 
                `user_mahasiswa`.`semester`, 
                `user_mahasiswa`.`prodi`, 
                `user_mahasiswa`.`konsentrasi`, 
                COUNT(`ta_ajuan`.`judul_ajuan`) AS jumlah_judul
            FROM `user_mahasiswa` LEFT JOIN `ta_ajuan` ON `ta_ajuan`.`id_mahasiswa` = `user_mahasiswa`.`id_mahasiswa` 
            GROUP BY `user_mahasiswa`.`id_mahasiswa` 
            ORDER BY 
                `user_mahasiswa`.`prodi` ASC,
                `user_mahasiswa`.`kelas` ASC,
                `user_mahasiswa`.`nama_mahasiswa` ASC
            "
        )->result_array();
    }

    public function get_mahasiswa_filter()
    {
        $kelas = $this->input->post('kelas');
        $tahun_masuk = $this->input->post('tahun_masuk');
        $prodi = $this->input->post('prodi');

        if (isset($_GET['kelas'])) {
            $kelas = $_GET['kelas'];
        }
        if (isset($_GET['tahun_masuk'])) {
            $tahun_masuk = $_GET['tahun_masuk'];
        }
        if (isset($_GET['prodi'])) {
            $prodi = $_GET['prodi'];
        }

        if ($kelas && $tahun_masuk && $prodi) {
            $where = "`user_mahasiswa`.`kelas` = '" . $kelas . "' AND `user_mahasiswa`.`tahun_masuk` = '" . $tahun_masuk . "' AND `user_mahasiswa`.`prodi` = '" . $prodi . "'";
        } elseif ($kelas && $tahun_masuk) {
            $where = "`user_mahasiswa`.`kelas` = '" . $kelas . "' AND `user_mahasiswa`.`tahun_masuk` = '" . $tahun_masuk . "'";
        } elseif ($tahun_masuk && $prodi) {
            $where = "`user_mahasiswa`.`tahun_masuk` = '" . $tahun_masuk . "' AND `user_mahasiswa`.`prodi` = '" . $prodi . "'";
        } elseif ($kelas && $prodi) {
            $where = "`user_mahasiswa`.`kelas` = '" . $kelas . "' AND `user_mahasiswa`.`prodi` = '" . $prodi . "'";
        } elseif ($kelas) {
            $where = "`user_mahasiswa`.`kelas` = '" . $kelas . "'";
        } elseif ($tahun_masuk) {
            $where = "`user_mahasiswa`.`tahun_masuk` = '" . $tahun_masuk . "'";
        } elseif ($tahun_masuk) {
            $where = "`user_mahasiswa`.`prodi` = '" . $prodi . "'";
        } else {
            $where = "`user_mahasiswa`.`kelas` = '" . $kelas . "' OR `user_mahasiswa`.`tahun_masuk` = '" . $tahun_masuk . "' OR `user_mahasiswa`.`prodi` = '" . $prodi . "'";
        }

        return $this->db->query(
            "SELECT 
                `user_mahasiswa`.`id_mahasiswa`, 
                `user_mahasiswa`.`npm`, 
                `user_mahasiswa`.`nama_mahasiswa`, 
                `user_mahasiswa`.`jenis_kelamin`, 
                `user_mahasiswa`.`kelas`, 
                `user_mahasiswa`.`tahun_masuk`, 
                `user_mahasiswa`.`semester`, 
                `user_mahasiswa`.`prodi`, 
                `user_mahasiswa`.`konsentrasi`, 
                COUNT(`ta_ajuan`.`judul_ajuan`) AS jumlah_judul
            FROM `user_mahasiswa` LEFT JOIN `ta_ajuan` ON `ta_ajuan`.`id_mahasiswa` = `user_mahasiswa`.`id_mahasiswa` 
            WHERE $where
            GROUP BY `user_mahasiswa`.`id_mahasiswa` 
            ORDER BY 
                `user_mahasiswa`.`prodi` ASC,
                `user_mahasiswa`.`kelas` ASC,
                `user_mahasiswa`.`nama_mahasiswa` ASC
            "
        )->result_array();
    }

    public function get_penguji()
    {
        return $this->db->query(
            "SELECT *,
                ROUND(COUNT(`ta_ujian`.`id_detail`) / 3) AS jumlah_mahasiswa,
                YEAR(`detail_ujian`.`tgl_ujian`) AS tahun
            FROM `user_penguji`
                INNER JOIN `detail_ujian` ON `detail_ujian`.`id_penguji` = `user_penguji`.`id_penguji` 
                INNER JOIN `ta_ujian` ON `ta_ujian`.`id_detail` = `detail_ujian`.`id_detail` 
                INNER JOIN `user_mahasiswa` ON `user_mahasiswa`.`id_mahasiswa` = `detail_ujian`.`id_mahasiswa` 
            GROUP BY 
                `user_penguji`.`id_penguji`, 
                YEAR(`detail_ujian`.`tgl_ujian`),
                `prodi`
            HAVING COUNT(`ta_ujian`.`id_detail`)%3 = 0
            "
        )->result_array();
    }

    public function get_penguji_filter()
    {
        $penguji = $this->input->post('penguji');
        $tahun = $this->input->post('tahun');
        $prodi = $this->input->post('prodi');

        if (isset($_GET['penguji'])) {
            $penguji = $_GET['penguji'];
        }
        if (isset($_GET['tahun'])) {
            $tahun = $_GET['tahun'];
        }
        if (isset($_GET['prodi'])) {
            $prodi = $_GET['prodi'];
        }

        if ($penguji && $tahun && $prodi) {
            $where = "`detail_ujian`.`id_penguji` = '" . $penguji . "' AND YEAR(`detail_ujian`.`tgl_ujian`) = '" . $tahun . "' AND `prodi` = '" . $prodi . "'";
        } elseif ($penguji && $tahun) {
            $where = "`detail_ujian`.`id_penguji` = '" . $penguji . "' AND YEAR(`detail_ujian`.`tgl_ujian`) = '" . $tahun . "'";
        } elseif ($tahun && $prodi) {
            $where = "YEAR(`detail_ujian`.`tgl_ujian`) = '" . $tahun . "' AND `prodi` = '" . $prodi . "'";
        } elseif ($penguji && $prodi) {
            $where = "`detail_ujian`.`id_penguji` = '" . $penguji . "' AND `prodi` = '" . $prodi . "'";
        } elseif ($penguji) {
            $where = "`detail_ujian`.`id_penguji` = '" . $penguji . "'";
        } elseif ($tahun) {
            $where = "YEAR(`detail_ujian`.`tgl_ujian`) = '" . $tahun . "'";
        } elseif ($prodi) {
            $where = "`prodi` = '" . $prodi . "'";
        } else {
            $where = "`detail_ujian`.`id_penguji` = '" . $penguji . "' OR YEAR(`detail_ujian`.`tgl_ujian`) = '" . $tahun . "' OR `prodi` = '" . $prodi . "'";
        }

        return $this->db->query(
            "SELECT *,
                ROUND(COUNT(`ta_ujian`.`id_detail`) / 3) AS jumlah_mahasiswa,
                YEAR(`detail_ujian`.`tgl_ujian`) AS tahun
            FROM `user_penguji`
                INNER JOIN `detail_ujian` ON `detail_ujian`.`id_penguji` = `user_penguji`.`id_penguji` 
                INNER JOIN `ta_ujian` ON `ta_ujian`.`id_detail` = `detail_ujian`.`id_detail` 
                INNER JOIN `user_mahasiswa` ON `user_mahasiswa`.`id_mahasiswa` = `detail_ujian`.`id_mahasiswa` 
            WHERE $where
            GROUP BY 
                `user_penguji`.`id_penguji`, 
                YEAR(`detail_ujian`.`tgl_ujian`),
                `prodi`
            HAVING COUNT(`ta_ujian`.`id_detail`)%3 = 0
            "
        )->result_array();
    }
}

/* End of file Report_model.php */
