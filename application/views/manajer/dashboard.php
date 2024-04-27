<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Dashboard
            <small>Manajer Area</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url('manajer') ?>"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">

            <div class="col-sm-12">

            <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Laporan Judul Skripsi Lolos Uji</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <div class="table-responsive">
                            <table id="example1" class="table table-bordered table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>NPM</th>
                                        <th>Nama Mahasiswa</th>
                                        <th>Kelas</th>
                                        <th>Semester</th>
                                        <th>Tahun Masuk</th>
                                        <th>Prodi</th>
                                        <th>Konsentrasi</th>
                                        <th>Judul</th>
                                        <th>Hasil Ujian</th>
                                        <th>Penguji 1</th>
                                        <th>Penguji 2</th>
                                        <th>Catatan Penguji 1</th>
                                        <th>Catatan Penguji 2</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $i = 1;
                                    foreach ($tested as $data) :
                                        // $count = $this->db->get_where('ta_ajuan', ['id_mahasiswa' => $data['id_mahasiswa'], 'submit' => 1, 'hasil_ujian' => 'diterima'])->num_rows();
                                        // if ($count < 3) :
                                    ?>
                                            <tr>
                                                <th><?= $i++ ?></th>
                                                <td><?= $data['npm'] ?></td>
                                                <td><?= $data['nama_mahasiswa'] ?></td>
                                                <td><?= $data['kelas'] ?></td>
                                                <td><?= $data['semester'] ?></td>
                                                <td><?= $data['tahun_masuk'] ?></td>
                                                <td><?= $data['prodi'] ?></td>
                                                <td><?= $data['konsentrasi'] ?></td>
                                                <td><?= $data['judul'] ?></td>
                                                <td><?= $data['hasil_ujian'] ?></td>
                                                <td><?= $data['penguji_1'] ?></td>
                                                <td><?= $data['penguji_2'] ?></td>
                                                <td><?= $data['catatan_penguji_1'] ?></td>
                                                <td><?= $data['catatan_penguji_2'] ?></td>
                                            </tr>
                                    <?php
                                        // endif;
                                    endforeach;
                                    ?>
                                </tbody>
                            </table>
                        </div>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->
            </div><!-- /.col -->

        </div><!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->