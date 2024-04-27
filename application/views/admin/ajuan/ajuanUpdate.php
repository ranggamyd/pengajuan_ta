<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Verifikasi Judul Skripsi
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
            <div class="col-md-6">

                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Detail Skripsi Ajuan</h3>
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
                                <th>Judul Ajuan</th>
                                <td><?= $ajuan->judul_ajuan ?></td>
                            </tr>
                            <tr>
                                <th>Tanggal Ajuan</th>
                                <td><?= date('d / m / Y, H:i', strtotime($ajuan->tgl_ajuan)) ?></td>
                            </tr>
                        </table>
                    </div><!-- /.box-body -->
                    <div class="box-footer">
                        <button type="button" onclick="window.history.go(-1)" class="btn btn-secondary">Kembali</button>
                    </div>
                </div><!-- /.box -->

            </div><!-- /.col -->

            <div class="col-md-6">

                <!-- general form elements -->
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Detail Verifikasi</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <form action="<?= base_url('admin/ajuan/proses_update') ?>" method="POST" role="form">
                        <input type="hidden" name="id_ajuan" value="<?= $ajuan->id_ajuan ?>">
                        <input type="hidden" name="id_mahasiswa" value="<?= $ajuan->id_mahasiswa ?>">
                        <input type="hidden" name="id_admin" value="<?= $this->session->userdata('id_admin') ?>">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="hasil">Hasil Verifikasi</label>
                                <select name="hasil_verifikasi" id="hasil" class="form-control" required>
                                    <option disabled>Pilih Hasil Verifikasi ..</option>
                                    <option value="diterima" <?php if ($ajuan->hasil_verifikasi == 'diterima') echo 'selected' ?>>Diterima</option>
                                    <option value="ditolak" <?php if ($ajuan->hasil_verifikasi == 'ditolak') echo 'selected' ?>>Ditolak</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="catatan">Catatan Verifikasi</label>
                                <textarea name="catatan_verifikasi" id="catatan" class="form-control" rows="5" placeholder="Tuliskan sesuatu .."><?= $verifikasi->catatan_verifikasi ?></textarea>
                            </div>
                        </div><!-- /.box-body -->
                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary">Simpan</button>
                        </div>
                    </form>
                </div><!-- /.box -->
            </div><!-- /.col -->

        </div><!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->