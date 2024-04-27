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

            <?php if (isset($ujian)) : ?>
                <div class="col-sm-12">
                    <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">Detail Ujian Judul Skripsi</h3>
                        </div><!-- /.box-header -->
                        <div class="box-body">
                            <div class="table-responsive">
                                <table id="example1" class="table table-bordered table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Nama Penguji</th>
                                            <th>Tanggal Ujian</th>
                                            <th>Ruang</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $i = 1;
                                        foreach ($ujian as $data) :
                                        ?>
                                            <tr>
                                                <th><?= $i++ ?></th>
                                                <td><?= $data['nama_penguji'] ?></td>
                                                <td><?= date('d / m / Y', strtotime($data['tgl_ujian'])) ?></td>
                                                <td><?= $data['ruang'] ?></td>
                                            </tr>
                                        <?php endforeach ?>
                                    </tbody>
                                </table>
                            </div>
                        </div><!-- /.box-body -->
                        <div class="box-footer">
                            <button type="button" onclick="window.history.go(-1)" class="btn btn-secondary">Kembali</button>
                        </div>
                    </div><!-- /.box -->
                </div>
            <?php endif ?>
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
                    </div>
                    <div class="box-footer">
                        <button type="button" onclick="window.history.go(-1)" class="btn btn-secondary">Kembali</button>
                    </div>
                </div><!-- /.box -->

            </div><!-- /.col -->

            <div class="col-md-8">

                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Daftar Skripsi Ajuan</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <div class="table-responsive">
                            <table id="example1" class="table table-bordered table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Judul Ajuan</th>
                                        <th>Tgl Ajuan</th>
                                        <th>Verifikasi</th>
                                        <th>Ujian</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $i = 1;
                                    foreach ($ajuan as $data) :
                                    ?>
                                        <tr>
                                            <th><?= $i++ ?></th>
                                            <td><?= $data['judul_ajuan'] ?></td>
                                            <td><?= date('d / m / Y', strtotime($data['tgl_ajuan'])) ?></td>
                                            <td>
                                                <?php if ($data['hasil_verifikasi'] == 'belum diverifikasi') : ?>
                                                    <span class="badge bg-yellow"><?= $data['hasil_verifikasi'] ?></span>
                                                <?php elseif ($data['hasil_verifikasi'] == 'diterima') : ?>
                                                    <span class="badge bg-green"><?= $data['hasil_verifikasi'] ?></span>
                                                <?php elseif ($data['hasil_verifikasi'] == 'ditolak') : ?>
                                                    <span class="badge bg-red"><?= $data['hasil_verifikasi'] ?></span>
                                                <?php endif ?>
                                            </td>
                                            <td>
                                                <?php if ($data['hasil_ujian'] == 'belum diuji') : ?>
                                                    <span class="badge bg-yellow"><?= $data['hasil_ujian'] ?></span>
                                                <?php elseif ($data['hasil_ujian'] == 'diterima') : ?>
                                                    <span class="badge bg-green"><?= $data['hasil_ujian'] ?></span>
                                                <?php elseif ($data['hasil_ujian'] == 'ditolak') : ?>
                                                    <span class="badge bg-red"><?= $data['hasil_ujian'] ?></span>
                                                <?php endif ?>
                                            </td>
                                            <td>
                                                <?php if ($data['hasil_verifikasi'] == 'belum diverifikasi') : ?>
                                                    <a href="<?= base_url('admin/ajuan/verifikasi/') . $data['id_ajuan'] ?>" class="btn btn-block btn-sm btn-warning">Verifikasi</a>
                                                <?php elseif ($data['hasil_verifikasi'] != 'belum diverifikasi' && $data['vSubmit'] == 0) : ?>
                                                    <a href="<?= base_url('admin/ajuan/update/') . $data['id_ajuan'] ?>" class="btn btn-block btn-sm btn-success">Edit Verifikasi</a>
                                                <?php endif ?>
                                                <a href="<?= base_url('admin/ajuan/detail_verifikasi/') . $data['id_ajuan'] ?>" class="btn btn-block btn-sm btn-primary">Detail</a>
                                            </td>
                                        </tr>
                                    <?php endforeach ?>
                                </tbody>
                            </table>
                        </div>
                    </div><!-- /.box-body -->
                    <?php
                    $ta = $this->db->get_where('ta_ajuan', ['id_mahasiswa' => $id, 'hasil_verifikasi' => 'belum diverifikasi'])->num_rows();
                    $this->db->join('ta_verifikasi', 'ta_verifikasi.id_ajuan = ta_ajuan.id_ajuan');
                    $submit = $this->db->get_where('ta_ajuan', ['id_mahasiswa' => $id, 'ta_verifikasi.submit' => 0])->num_rows();

                    if ($ta == 0 && $submit > 0) :
                    ?>
                        <div class="box-footer">
                            <a href="<?= base_url('admin/ajuan/submit/') . $id ?>" class="btn btn-primary">Kirim Hasil Verifikasi</a>
                        </div>
                    <?php endif ?>
                </div><!-- /.box -->
            </div><!-- /.col -->

        </div><!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->