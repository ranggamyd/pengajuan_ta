<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Buat Ujian Judul Skripsi
            <small>Admin Area</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url('admin') ?>"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="<?= base_url('admin/ujian') ?>">Judul Skripsi</a></li>
            <li class="active">Buat Ujian Judul Skripsi Ajuan</li>
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
            <div class="col-md-4">

                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Detail Mahasiswa</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <table class="table table-bordered table-striped table-hover">
                            <tr>
                                <th>NPM</th>
                                <td><?= $ujian->npm ?></td>
                            </tr>
                            <tr>
                                <th>Nama Mahasiswa</th>
                                <td><?= $ujian->nama_mahasiswa ?></td>
                            </tr>
                            <tr>
                                <th>Kelas</th>
                                <td><?= $ujian->kelas ?></td>
                            </tr>
                            <tr>
                                <th>Semester</th>
                                <td><?= $ujian->semester ?></td>
                            </tr>
                            <tr>
                                <th>Tahun Masuk</th>
                                <td><?= $ujian->tahun_masuk ?></td>
                            </tr>
                            <tr>
                                <th>Konsentrasi</th>
                                <td><?= $ujian->prodi ?></td>
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
                        <h3 class="box-title">Detail Buat Ujian</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <form action="<?= base_url('admin/ujian/proses_create') ?>" method="POST" role="form">
                        <input type="hidden" name="id_mahasiswa" value="<?= $ujian->id_mahasiswa ?>">
                        <input type="hidden" name="id_admin" value="<?= $this->session->userdata('id_admin') ?>">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label for="id_penguji_1">Nama Penguji 1</label>
                                        <select name="id_penguji_1" id="id_penguji_1" class="form-control" required>
                                            <option selected disabled>Pilih Penguji 1 ..</option>
                                            <?php $this->db->order_by('nama_penguji', 'asc');
                                            foreach ($this->db->get('user_penguji')->result_array() as $data) : ?>
                                                <option value="<?= $data['id_penguji'] ?>"><?= $data['nama_penguji'] ?></option>
                                            <?php endforeach ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label for="id_penguji_2">Nama Penguji 2</label>
                                        <select name="id_penguji_2" id="id_penguji_2" class="form-control" required>
                                            <option selected disabled>Pilih Penguji 2 ..</option>
                                            <?php $this->db->order_by('nama_penguji', 'asc');
                                            foreach ($this->db->get('user_penguji')->result_array() as $data) : ?>
                                                <option value="<?= $data['id_penguji'] ?>"><?= $data['nama_penguji'] ?></option>
                                            <?php endforeach ?>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="tgl_ujian">Tanggal Ujian</label>
                                <input type="date" name="tgl_ujian" id="tgl_ujian" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="ruang">Ruang</label>
                                <input type="text" name="ruang" id="ruang" class="form-control" placeholder="Masukkan Ruangan Ujian .." required>
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