<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Judul Ajuan Saya
            <small>Mahasiswa Area</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url('mahasiswa') ?>"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="<?= base_url('mahasiswa/ajuan') ?>">Judul Ajuan Saya</a></li>
            <li class="active">Detail Judul Skripsi</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">

            <div class="col-md-4">

                <!-- general form elements -->
                <div class="box">
                    <div class="box-header with-border">
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
                        <button type="button" onclick="window.history.go(-1)" class="btn btn-secondary">Kembali</button>
                    </div>
                </div><!-- /.box -->
            </div><!-- /.col -->

            <div class="col-md-8">
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Detail Judul Skripsi</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <table class="table table-bordered table-striped table-hover">
                            <tr>
                                <th>Nama Mahasiswa</th>
                                <td><?= $mhs->nama_mahasiswa ?></td>
                            </tr>
                            <tr>
                                <th>Judul Ajuan</th>
                                <th><?= $ajuan->judul_ajuan ?></th>
                            </tr>
                            <tr>
                                <th>Tanggal Ajuan</th>
                                <td><?= date('d / m / Y', strtotime($ajuan->tgl_ajuan)) ?></td>
                            </tr>
                            <tr>
                                <th>Hasil Verifikasi</th>
                                <td><?= $ajuan->hasil_verifikasi ?></td>
                            </tr>
                            <tr>
                                <th>Hasil Ujian</th>
                                <td><?= $ajuan->hasil_ujian ?></td>
                            </tr>
                        </table>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->
            </div>

            <?php if (isset($verifikasi)) : ?>
                <div class="col-md-8">
                    <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">Detail Judul Skripsi</h3>
                        </div><!-- /.box-header -->
                        <div class="box-body">
                            <table class="table table-bordered table-striped table-hover">
                                <tr>
                                    <th>Nama Mahasiswa</th>
                                    <td><?= $mhs->nama_mahasiswa ?></td>
                                </tr>
                                <tr>
                                    <th>Judul Ajuan</th>
                                    <th><?= $ajuan->judul_ajuan ?></th>
                                </tr>
                                <tr>
                                    <th>Tanggal Ajuan</th>
                                    <td><?= date('d / m / Y', strtotime($ajuan->tgl_ajuan)) ?></td>
                                </tr>
                                <tr>
                                    <th>Hasil Verifikasi</th>
                                    <td><?= $ajuan->hasil_verifikasi ?></td>
                                </tr>
                                <tr>
                                    <th>Hasil Ujian</th>
                                    <td><?= $ajuan->hasil_ujian ?></td>
                                </tr>
                            </table>
                        </div><!-- /.box-body -->
                        <div class="box-footer">
                            <button type="button" onclick="window.history.go(-1)" class="btn btn-secondary">Kembali</button>
                        </div>
                    </div><!-- /.box -->
                </div>
            <?php endif ?>

            <?php if (isset($ujian)) : ?>
                <div class="col-md-4">
                    <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">Detail Judul Skripsi</h3>
                        </div><!-- /.box-header -->
                        <div class="box-body">
                            <table class="table table-bordered table-striped table-hover">
                                <tr>
                                    <th>Nama Mahasiswa</th>
                                    <td><?= $mhs->nama_mahasiswa ?></td>
                                </tr>
                                <tr>
                                    <th>Judul Ajuan</th>
                                    <th><?= $ajuan->judul_ajuan ?></th>
                                </tr>
                                <tr>
                                    <th>Tanggal Ajuan</th>
                                    <td><?= date('d / m / Y', strtotime($ajuan->tgl_ajuan)) ?></td>
                                </tr>
                                <tr>
                                    <th>Hasil Verifikasi</th>
                                    <td><?= $ajuan->hasil_verifikasi ?></td>
                                </tr>
                                <tr>
                                    <th>Hasil Ujian</th>
                                    <td><?= $ajuan->hasil_ujian ?></td>
                                </tr>
                            </table>
                        </div><!-- /.box-body -->
                        <div class="box-footer">
                            <button type="button" onclick="window.history.go(-1)" class="btn btn-secondary">Kembali</button>
                        </div>
                    </div><!-- /.box -->
                </div>
            <?php endif ?>

        </div><!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->