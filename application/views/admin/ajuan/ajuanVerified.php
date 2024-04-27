<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Judul Skripsi
            <small>Admin Area</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url('admin') ?>"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="<?= base_url('admin/ajuan') ?>">Judul Skripsi</a></li>
            <li class="active">Judul Skripsi Lolos Verifikasi</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">

                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Daftar Judul Skripsi Lolos Verifikasi</h3>
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
                                        <th>Konsentrasi</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $i = 1;
                                    foreach ($verified as $data) :
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
                                            <td>
                                                <?php if ($data['submit'] == '1') : ?>
                                                    <a href="<?= base_url('admin/ujian/detail/') . $data['id_mahasiswa'] ?>" class="btn btn-block btn-sm btn-success">Buat Ujian</a>
                                                    <a href="<?= base_url('admin/ajuan/detail/') . $data['id_mahasiswa'] ?>" class="btn btn-block btn-sm btn-primary">Skripsi Ajuan</a>
                                                <?php endif ?>
                                            </td>
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