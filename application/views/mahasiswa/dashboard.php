<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Dashboard
            <small>Mahasiswa Area</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url() . $this->session->userdata('role') ?>"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-sm-12">
                <div class="callout callout-info">
                    <h4>Informasi</h4>
                    <p>Setiap Mahasiswa <strong>WAJIB</strong> mengajukan 3 judul skripsi, apabila judul skripsi yang diajukan kurang dari 3, maka <strong>TIDAK AKAN DIVERIFIKASI</strong>, dan apabila ada judul yang tidak lolos verifikasi maka Mahasiswa harus mengajukan judul kembali sebanyak judul yang ditolak.</p>
                    <p>Setelah anda siap dengan 3 judul anda, maka anda dapat mengirimkan judul anda dengan cara menekan tombol <kbd>Kirim Judul Skripsi.</kbd></p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">

                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Profil Saya</h3>
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
                                <th>Prodi</th>
                                <td><?= $mhs->prodi ?></td>
                            </tr>
                            <tr>
                                <th>Konsentrasi</th>
                                <td><?= $mhs->konsentrasi ?></td>
                            </tr>
                        </table>
                    </div>
                </div><!-- /.box -->

            </div><!-- /.col -->

            <div class="col-md-8">

                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Daftar Judul Ajuan Saya</h3>
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
                                        </tr>
                                    <?php endforeach ?>
                                </tbody>
                            </table>
                        </div>
                    </div><!-- /.box-body -->

                    <?php
                    $this->db->join('ta_ajuan', 'ta_ajuan.id_ajuan = ta_verifikasi.id_ajuan');
                    $ta_verifikasi = $this->db->get_where('ta_verifikasi', ['ta_ajuan.id_mahasiswa' => $id, 'ta_verifikasi.submit' => 1])->num_rows();
                    $ta_tolak = $this->db->get_where('ta_ajuan', ['id_mahasiswa' => $id, 'hasil_verifikasi' => 'ditolak'])->num_rows();
                    $ajuan_submit = $this->db->get_where('ta_ajuan', ['id_mahasiswa' => $id, 'submit' => 0])->num_rows();

                    if (($total_ajuan - $ta_tolak) < 3) :
                    ?>
                        <div class="box-footer">
                            <a href="<?= base_url('mahasiswa/ajuan/add/') . $id ?>" class="btn btn-primary">Tambah Judul Skripsi</a>
                        </div>
                    <?php elseif (($total_ajuan - $ta_tolak) == 3 && $ajuan_submit > 0) : ?>
                        <div class="box-footer">
                            <a href="<?= base_url('mahasiswa/ajuan/submit/') . $id ?>" class="btn btn-primary">Kirim Judul Skripsi</a>
                        </div>
                    <?php endif ?>

                </div><!-- /.box -->
            </div><!-- /.col -->

        </div><!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->