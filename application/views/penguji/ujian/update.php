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
            <li class="active">Edit Ujian</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-4">

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
                                <th>Hasil Ujian</th>
                                <td><?= $ajuan->hasil_ujian ?></td>
                            </tr>
                        </table>
                    </div><!-- /.box-body -->
                    <div class="box-footer">
                        <button class="btn btn-secondary" onclick="window.history.go(-1)">Kembali</button>
                    </div>
                </div><!-- /.box -->

            </div><!-- /.col -->

            <div class="col-md-8">

                <!-- general form elements -->
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Detail Ujian</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <form action="<?= base_url('penguji/ujian/proses_update') ?>" method="POST" role="form">
                        <input type="hidden" name="id_ujian" value="<?= $ujian->id_ujian ?>">
                        <input type="hidden" name="id_ajuan" value="<?= $ajuan->id_ajuan ?>">
                        <input type="hidden" name="id_detail" value="<?= $this->db->get_where('detail_ujian', ['id_penguji' => $this->session->userdata('id_penguji')])->row('id_detail') ?>">
                        <input type="hidden" name="id_mahasiswa" value="<?= $ajuan->id_mahasiswa ?>">
                        <input type="hidden" name="id_penguji" value="<?= $this->session->userdata('id_penguji') ?>">
                        <div class="box-body">
                            <?php
                            $this->db->join('detail_ujian', 'detail_ujian.id_detail = ta_ujian.id_detail');
                            $ph = $this->db->get_where('ta_ujian', ['id_ajuan' => $ajuan->id_ajuan, 'detail_ujian.id_penguji' => $this->session->userdata('id_penguji'), 'pemberi_hasil' => 1])->num_rows();
                            if ($ph > 0) :
                            ?>
                                <div class="form-group">
                                    <label for="hasil">Hasil Ujian</label>
                                    <select name="hasil_ujian" id="hasil" class="form-control" required>
                                        <option disabled>Pilih Hasil Ujian ..</option>
                                        <option value="diterima" <?php if ($ajuan->hasil_ujian == 'diterima') echo 'selected'; ?>>Diterima</option>
                                        <option value="ditolak" <?php if ($ajuan->hasil_ujian == 'ditolak') echo 'selected'; ?>>Ditolak</option>
                                    </select>
                                </div>
                            <?php endif ?>
                            <div class="form-group">
                                <label for="catatan">Catatan Ujian</label>
                                <textarea name="catatan_penguji" id="catatan" class="form-control" rows="5" placeholder="Tuliskan sesuatu .."><?= $ujian->catatan_penguji ?></textarea>
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