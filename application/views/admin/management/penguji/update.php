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
            <li><a href="<?= base_url('admin/management/penguji') ?>">Manajemen User</a></li>
            <li class="active">Edit Penguji</li>
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
                        <h3 class="box-title">Edit Penguji</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <form action="<?= base_url('admin/management/proses_update_penguji') ?>" method="POST" role="form">
                        <input type="hidden" name="id_penguji" value="<?= $penguji->id_penguji ?>">
                        <input type="hidden" name="id_user" value="<?= $penguji->id_user ?>">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="username">Username / NIK</label>
                                <input type="text" name="username" value="<?= $penguji->username ?>" id="username" class="form-control" placeholder="Username .." required>
                            </div>
                            <div class="form-group">
                                <label for="nama_penguji">Nama Penguji</label>
                                <input type="text" name="nama_penguji" value="<?= $penguji->nama_penguji ?>" id="nama_penguji" class="form-control" placeholder="Nama Penguji .." required>
                            </div>
                            <div class="form-group">
                                <label for="jenis_kelamin">Jenis Kelamin</label>
                                <select name="jenis_kelamin" id="jenis_kelamin" class="form-control" required>
                                    <option selected disabled>Jenis Kelamin ..</option>
                                    <option value="L" <?php if ($penguji->jenis_kelamin == 'L') echo 'selected' ?>>Laki-laki</option>
                                    <option value="P" <?php if ($penguji->jenis_kelamin == 'P') echo 'selected' ?>>Perempuan</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="jafung">Jafung</label>
                                <input type="text" name="jafung" value="<?= $penguji->jafung ?>" id="jafung" class="form-control" placeholder="Jafung .." required>
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