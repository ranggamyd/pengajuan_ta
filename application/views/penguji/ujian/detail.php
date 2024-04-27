<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Judul Skripsi Ajuan
            <small>Mahasiswa Area</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url('mahasiswa') ?>"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="<?= base_url('mahasiswa/ajuan') ?>">Judul Skripsi Ajuan</a></li>
            <li class="active">Buat Ujian</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-sm-12">
                <?php if ($this->session->flashdata('error')) : ?>
                    <div class="alert alert-danger">
                        <a href="#" class="close" data-dismiss="alert">&times;</a>
                        <strong>Gagal !</strong> <?php echo $this->session->flashdata('error'); ?>
                    </div>
                <?php endif ?>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">

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

            <div class="col-sm-8">

                <!-- general form elements -->
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Tambah Hasil Ujian</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <div class="box-body">
                        <div class="table-responsive">
                            <table id="example1" class="table table-bordered table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Nama Penguji</th>
                                        <th>Tanggal Ujian</th>
                                        <th>Ruang</th>
                                        <?php if ($ujian) : ?>
                                            <th>Aksi</th>
                                        <?php endif ?>
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
                                            <?php if ($ujian) : ?>
                                                <td>
                                                    <?php if ($data['id_penguji'] == $this->session->userdata('id_penguji')) : ?>
                                                        <a href="<?= base_url('penguji/ujian/update/') . $ajuan->id_ajuan ?>" class="btn btn-sm btn-success btn-block">Edit</a>
                                                    <?php endif ?>
                                                </td>
                                            <?php endif ?>
                                        </tr>
                                    <?php endforeach ?>
                                </tbody>
                            </table>
                        </div>
                    </div><!-- /.box-body -->
                    <div class="box-footer">
                        <?php
                        $this->db->join('detail_ujian', 'detail_ujian.id_detail = ta_ujian.id_detail', 'left');
                        $this->db->where('id_penguji', $this->session->userdata('id_penguji'));
                        $this->db->where('id_ajuan', $ajuan->id_ajuan);
                        // $this->db->where('EXISTS()');
                        $condition = $this->db->get('ta_ujian')->result_array();

                        if (!$condition) :
                        ?>
                            <a href="<?= base_url('penguji/ujian/add/') . $ajuan->id_ajuan ?>" class="btn btn-primary">Tambah</a>
                        <?php endif ?>
                    </div>
                </div><!-- /.box -->
            </div><!-- /.col -->

        </div><!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->