<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Manajemen User
            <small>Admin Area</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url('admin') ?>"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="<?= base_url('admin/management/mahasiswa') ?>">Manajemen User</a></li>
            <li class="active">Tambah Mahasiswa</li>
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

            <div class="col-md-6 col-sm-12">
                <!-- general form elements -->
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Tambah Mahasiswa</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <form action="<?= base_url('admin/management/proses_add_mahasiswa') ?>" method="POST" role="form">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="username">Username / NPM</label>
                                <input type="text" name="username" id="username" class="form-control" placeholder="Username .." required>
                            </div>
                            <div class="form-group">
                                <label for="nama_mahasiswa">Nama Mahasiswa</label>
                                <input type="text" name="nama_mahasiswa" id="nama_mahasiswa" class="form-control" placeholder="Nama Mahasiswa .." required>
                            </div>
                            <div class="form-group">
                                <label for="jenis_kelamin">Jenis Kelamin</label>
                                <select name="jenis_kelamin" id="jenis_kelamin" class="form-control" required>
                                    <option selected disabled>Jenis Kelamin ..</option>
                                    <option value="L">Laki-laki</option>
                                    <option value="P">Perempuan</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="kelas">Kelas</label>
                                <select name="kelas" class="form-control" id="kelas" required>
                                    <option selected disabled>Pilih Kelas ..</option>
                                    <?php
                                    $this->db->group_by('kelas');
                                    foreach ($this->db->get('prodi')->result_array() as $data) :
                                    ?>
                                        <option value="<?= $data['kelas'] ?>"><?= $data['kelas'] ?></option>
                                    <?php endforeach ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="semester">Semester</label>
                                <input type="number" name="semester" id="semester" class="form-control" placeholder="Semester .." required>
                            </div>
                            <div class="form-group">
                                <label for="tahun_masuk">Tahun Masuk</label>
                                <input type="number" name="tahun_masuk" id="tahun_masuk" class="form-control" placeholder="Tahun Masuk .." required>
                            </div>
                            <div class="form-group">
                                <label for="prodi">Prodi</label>
                                <select name="prodi" class="form-control" id="prodi" required>
                                    <option selected disabled>Pilih Prodi ..</option>
                                    <?php
                                    $this->db->group_by('prodi');
                                    foreach ($this->db->get('prodi')->result_array() as $data) :
                                    ?>
                                        <option value="<?= $data['prodi'] ?>"><?= $data['prodi'] ?></option>
                                    <?php endforeach ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="konsentrasi">Konsentrasi</label>
                                <select name="konsentrasi" class="form-control" id="konsentrasi" required>
                                    <option selected disabled>Pilih Konsentrasi ..</option>
                                    <?php
                                    $this->db->group_by('konsentrasi');
                                    foreach ($this->db->get('prodi')->result_array() as $data) :
                                    ?>
                                        <option value="<?= $data['konsentrasi'] ?>"><?= $data['konsentrasi'] ?></option>
                                    <?php endforeach ?>
                                </select>
                            </div>
                        </div><!-- /.box-body -->
                        <div class="box-footer">
                            <button type="button" onclick="window.history.go(-1)" class="btn btn-secondary">Kembali</button>
                            <button type="submit" class="btn btn-primary">Tambah</button>
                        </div>
                    </form>
                </div><!-- /.box -->

            </div><!-- /.col -->

        </div><!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->