<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Detail Ujian
            <small>Admin Area</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url('admin') ?>"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="<?= base_url('admin/ajuan') ?>">Judul Skripsi</a></li>
            <li class="active">Verifikasi Judul Skripsi Ajuan</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
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
            <div class="col-md-4">

                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Detail Mahasiswa</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <table class="table table-bordered table-striped table-hover">
                            <tr>
                                <th>NPM</th>
                                <td><?= $mhs->npm ?></td>
                            </tr>
                            <tr>
                                <th>Nama Mahasiswa</th>
                                <td><?= $mhs->nama_mahasiswa ?></td>
                            </tr>
                            <tr>
                                <th>Kelas</th>
                                <td><?= $mhs->kelas ?></td>
                            </tr>
                            <tr>
                                <th>Semester</th>
                                <td><?= $mhs->semester ?></td>
                            </tr>
                            <tr>
                                <th>Tahun Masuk</th>
                                <td><?= $mhs->tahun_masuk ?></td>
                            </tr>
                            <tr>
                                <th>Konsentrasi</th>
                                <td><?= $mhs->prodi ?></td>
                            </tr>
                        </table>
                    </div><!-- /.box-body -->
                    <div class="box-footer">
                        <button class="btn btn-secondary" onclick="window.history.go(-1)">Kembali</button>
                    </div>
                </div><!-- /.box -->

            </div><!-- /.col -->

            <div class="col-md-8">

                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Daftar Detail Ujian</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <div class="table-responsive">
                            <table id="example1" class="table table-bordered table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Nama Penguji</th>
                                        <th>Tgl Ujian</th>
                                        <th>Ruang</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $i = 1;
                                    foreach ($ujian->result_array() as $data) :
                                    ?>
                                        <tr>
                                            <th><?= $i++ ?></th>
                                            <td><?= $data['nama_penguji'] ?></td>
                                            <td><?= date('d / m / Y', strtotime($data['tgl_ujian'])) ?></td>
                                            <td><?= $data['ruang'] ?></td>
                                            <td>
                                                <a href="<?= base_url('admin/ujian/update/') . $data['id_detail'] ?>" class="btn btn-block btn-sm btn-success">Edit</a>
                                                <a href="<?= base_url('admin/ujian/delete/') . $data['id_detail'] ?>" onclick="confirm('Apakah Anda yakin ingin hapus data ini?')" class="btn btn-block btn-sm btn-danger">Hapus</a>
                                            </td>
                                        </tr>
                                    <?php endforeach ?>
                                </tbody>
                            </table>
                        </div>
                    </div><!-- /.box-body -->
                    <?php if ($ujian->num_rows() < 2) : ?>
                        <div class="box-footer">
                            <a href="<?= base_url('admin/ujian/create/') . $id ?>" class="btn btn-primary">Buat Detail Ujian</a>
                        </div>
                    <?php endif ?>
                </div><!-- /.box -->
            </div><!-- /.col -->

        </div><!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->