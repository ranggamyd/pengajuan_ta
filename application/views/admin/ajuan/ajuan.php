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
            <li class="active">Daftar Judul Skripsi Ajuan</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <a href="<?= base_url('admin/ajuan') ?>" class="btn btn-block btn-primary">Skripsi siap diverifikasi</a>
            </div>
            <div class="col-md-3 col-sm-6">
                <a href="<?= base_url('admin/ajuan/nonsubmitted') ?>" class="btn btn-block btn-warning">Skripsi belum siap diverifikasi</a>
            </div>
        </div><br>
        <div class="row">
            <div class="col-xs-12">

                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Daftar Judul Skripsi Ajuan</h3>
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
                                    foreach ($ajuan as $data) :
                                        $count = $this->db->get_where('ta_ajuan', ['id_mahasiswa' => $data['id_mahasiswa'], 'submit' => 1, 'hasil_verifikasi' => 'diterima'])->num_rows();
                                        if ($count < 3) :
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
                                                        <a href="<?= base_url('admin/ajuan/detail/') . $data['id_mahasiswa'] ?>" class="btn btn-success">Verifikasi Judul</a>
                                                    <?php endif ?>
                                                </td>
                                            </tr>
                                    <?php
                                        endif;
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