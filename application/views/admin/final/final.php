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
            <li><a href="<?= base_url('admin/ujian') ?>">Judul Skripsi Pra Uji</a></li>
            <li class="active">Daftar Judul Skripsi Pra Uji</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">

                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Daftar Judul Skripsi Final</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <div class="table-responsive">
                            <table id="example1" class="table table-bordered table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>NPM</th>
                                        <th>Nama Mahasiswa</th>
                                        <th>Jenis Kelamin</th>
                                        <th>Kelas</th>
                                        <th>Tahun Masuk</th>
                                        <th>Prodi</th>
                                        <th>Konsentrasi</th>
                                        <th>Judul</th>
                                        <th>Tahun Ajuan</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $i = 1;
                                    foreach ($final as $data) :
                                    ?>
                                        <tr>
                                            <th><?= $i++ ?></th>
                                            <td><?= $data['npm'] ?></td>
                                            <td><?= $data['nama_mahasiswa'] ?></td>
                                            <td><?= $data['jenis_kelamin'] ?></td>
                                            <td><?= $data['kelas'] ?></td>
                                            <td><?= $data['tahun_masuk'] ?></td>
                                            <td><?= $data['prodi'] ?></td>
                                            <td><?= $data['konsentrasi'] ?></td>
                                            <td><?= $data['judul'] ?></td>
                                            <td><?= $data['tahun_ajuan'] ?></td>
                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                            </table>
                        </div>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->
            </div><!-- /.col -->
        </div><!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->