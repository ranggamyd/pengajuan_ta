<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Judul Skripsi Ajuan
            <small>Penguji Area</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url('penguji') ?>"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="<?= base_url('penguji/ajuan') ?>">Judul Skripsi Ajuan</a></li>
            <li class="active">Daftar Judul Skripsi Ajuan</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <a href="<?= base_url('penguji/ajuan') ?>" class="btn btn-block btn-primary">Skripsi belum diuji</a>
            </div>
            <div class="col-md-3 col-sm-6">
                <a href="<?= base_url('penguji/ajuan/submitted') ?>" class="btn btn-block btn-warning">Skripsi sudah diuji</a>
            </div>
        </div><br>
        <div class="row">
            <div class="col-sm-12">
                <div class="callout callout-info">
                    <h4>Informasi</h4>
                    <p>Seluruh judul skripsi Mahasiswa <strong>harus diberikan catatan oleh setiap Penguji.</strong></p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <?php if ($this->session->flashdata('success')) : ?>
                    <div class="alert alert-success">
                        <a href="#" class="close" data-dismiss="alert">&times;</a>
                        <strong>Berhasil !</strong> <?php echo $this->session->flashdata('success'); ?>
                    </div>
                <?php endif ?>
            </div>
        </div>
        <div class="row">

            <div class="col-sm-12">

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
                                    foreach ($ujian as $data) :
                                    ?>
                                        <tr>
                                            <th><?= $i++ ?></th>
                                            <td><?= $data['npm'] ?></td>
                                            <td><?= $data['nama_mahasiswa'] ?></td>
                                            <td><?= $data['kelas'] ?></td>
                                            <td><?= $data['semester'] ?></td>
                                            <td><?= $data['tahun_masuk'] ?></td>
                                            <td><?= $data['prodi'] ?></td>
                                            <td><a href="<?= base_url('penguji/ajuan/detail/') . $data['id_mahasiswa'] ?>" class="btn btn-info">Detail</a></td>
                                        </tr>
                                    <?php endforeach ?>
                                </tbody>
                            </table>
                        </div>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->
            </div><!-- /.col -->

        </div><!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->