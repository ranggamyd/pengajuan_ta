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
            <li class="active">Edit Mahasiswa</li>
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
                        <h3 class="box-title">Edit Mahasiswa</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <form action="<?= base_url('admin/management/proses_update_mahasiswa') ?>" method="POST" role="form">
                        <input type="hidden" name="id_mahasiswa" value="<?= $mahasiswa->id_mahasiswa ?>">
                        <input type="hidden" name="id_user" value="<?= $mahasiswa->id_user ?>">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="username">Username / NPM</label>
                                <input type="text" name="username" value="<?= $mahasiswa->username ?>" id="username" class="form-control" placeholder="Username .." required>
                            </div>
                            <div class="form-group">
                                <label for="nama_mahasiswa">Nama mahasiswa</label>
                                <input type="text" name="nama_mahasiswa" value="<?= $mahasiswa->nama_mahasiswa ?>" id="nama_mahasiswa" class="form-control" placeholder="Nama mahasiswa .." required>
                            </div>
                            <div class="form-group">
                                <label for="jenis_kelamin">Jenis Kelamin</label>
                                <select name="jenis_kelamin" id="jenis_kelamin" class="form-control" required>
                                    <option selected disabled>Jenis Kelamin ..</option>
                                    <option value="L" <?php if ($mahasiswa->jenis_kelamin == 'L') echo 'selected' ?>>Laki-laki</option>
                                    <option value="P" <?php if ($mahasiswa->jenis_kelamin == 'P') echo 'selected' ?>>Perempuan</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="kelas">Kelas</label>
                                <input type="text" name="kelas" value="<?= $mahasiswa->kelas ?>" id="kelas" class="form-control" placeholder="kelas .." required>
                            </div>
                            <div class="form-group">
                                <label for="semester">Semester</label>
                                <input type="number" name="semester" value="<?= $mahasiswa->semester ?>" id="semester" class="form-control" placeholder="Semester .." required>
                            </div>
                            <div class="form-group">
                                <label for="tahun_masuk">Tahun Masuk</label>
                                <input type="number" name="tahun_masuk" value="<?= $mahasiswa->tahun_masuk ?>" id="tahun_masuk" class="form-control" placeholder="Tahun Masuk .." required>
                            </div>
                            <div class="form-group">
                                <label for="prodi">Konsentrasi</label>
                                <input type="text" name="prodi" value="<?= $mahasiswa->prodi ?>" id="prodi" class="form-control" placeholder="Konsentrasi .." required>
                            </div>
                        </div><!-- /.box-body -->
                        <div class="box-footer">
                            <button type="button" onclick="window.history.go(-1)" class="btn btn-secondary">Kembali</button>
                            <button type="submit" class="btn btn-primary">Edit</button>
                        </div>
                    </form>
                </div><!-- /.box -->

            </div><!-- /.col -->

        </div><!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->