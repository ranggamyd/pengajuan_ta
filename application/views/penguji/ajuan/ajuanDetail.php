<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Detail Judul Skripsi Ajuan
            <small>Penguji Area</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url('penguji') ?>"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="<?= base_url('penguji/ajuan') ?>">Judul Skripsi Ajuan</a></li>
            <li class="active">Detail Judul Skripsi Ajuan</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-6">

                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Detail Mahasiswa</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <table class="table table-bordered table-striped table-hover">
                            <tr>
                                <th>NPM</th>
                                <td><?= $ajuan->npm ?></td>
                            </tr>
                            <tr>
                                <th>Nama Mahasiswa</th>
                                <td><?= $ajuan->nama_mahasiswa ?></td>
                            </tr>
                            <tr>
                                <th>Kelas</th>
                                <td><?= $ajuan->kelas ?></td>
                            </tr>
                            <tr>
                                <th>Semester</th>
                                <td><?= $ajuan->semester ?></td>
                            </tr>
                            <tr>
                                <th>Konsentrasi</th>
                                <td><?= $ajuan->prodi ?></td>
                            </tr>
                        </table>
                    </div><!-- /.box-body -->
                    <div class="box-footer">
                        <button class="btn btn-secondary" onclick="window.history.go(-1)">Kembali</button>
                    </div>
                </div><!-- /.box -->

            </div><!-- /.col -->

            <div class="col-md-6">

                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Detail Skripsi Ajuan</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <table class="table table-bordered table-striped table-hover">
                            <tr>
                                <th>Judul Ajuan</th>
                                <td><?= $ajuan->judul_ajuan ?></td>
                            </tr>
                            <tr>
                                <th>Tanggal Ajuan</th>
                                <td><?= date('d / m / Y, H:i', strtotime($ajuan->tgl_ajuan)) ?></td>
                            </tr>
                            <tr>
                                <th>Hasil Verifikasi</th>
                                <td><?= $ajuan->hasil_verifikasi ?></td>
                            </tr>
                            <tr>
                                <th>Catatan Verifikasi</th>
                                <td><?php if (isset($verifikasi->catatan_verifikasi)) echo $verifikasi->catatan_verifikasi ?></td>
                            </tr>
                            <tr>
                                <th>Hasil Ujian</th>
                                <td><?= $ajuan->hasil_ujian ?></td>
                            </tr>
                            <tr>
                                <th>Catatan Penguji</th>
                                <td><?php if (isset($ujian->catatan_penguji)) echo $ujian->catatan_penguji ?></td>
                            </tr>
                        </table>
                    </div>
                </div><!-- /.box -->

            </div><!-- /.col -->

        </div><!-- /.row -->
        <div class="row">
            <div class="col-sm-6">
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Detail Verifikasi Judul Skripsi</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <table class="table table-bordered table-striped table-hover">
                            <tr>
                                <th>Nama Admin</th>
                                <td><?= $verifikasi->nama_admin ?></td>
                            </tr>
                            <tr>
                                <th>Tanggal Verifikasi</th>
                                <td><?= date('d / m / Y, H:i', strtotime($verifikasi->tgl_verifikasi)) ?></td>
                            </tr>
                            <tr>
                                <th>Catatan Verifikasi</th>
                                <td><?= $verifikasi->catatan_verifikasi ?></td>
                            </tr>
                        </table>
                    </div>
                </div><!-- /.box -->
            </div>

            <?php if ($ujian) : ?>
                <div class="col-sm-6">
                    <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">Detail Ujian Judul Skripsi</h3>
                        </div><!-- /.box-header -->
                        <div class="box-body">
                            <table class="table table-bordered table-striped table-hover">
                                <tr>
                                    <th>Nama Penguji</th>
                                    <td><?= $ujian->nama_penguji ?></td>
                                </tr>
                                <tr>
                                    <th>Catatan Penguji</th>
                                    <td><?= $ujian->catatan_penguji ?></td>
                                </tr>
                            </table>
                        </div>
                    </div><!-- /.box -->
                </div>
            <?php endif ?>
        </div>
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->