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
            <li><a href="<?= base_url('admin/management/prodi') ?>">Manajemen User</a></li>
            <li class="active">Edit Prodi</li>
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
                        <h3 class="box-title">Edit Prodi</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <form action="<?= base_url('admin/management/proses_update_prodi') ?>" method="POST" role="form">
                        <input type="hidden" name="id_prodi" value="<?= $prodi->id_prodi ?>">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="prodi">Prodi</label>
                                <input type="text" name="prodi" value="<?= $prodi->prodi ?>" id="prodi" class="form-control" placeholder="Prodi .." required>
                            </div>
                            <div class="form-group">
                                <label for="konsentrasi">Konsentrasi</label>
                                <input type="text" name="konsentrasi" value="<?= $prodi->konsentrasi ?>" id="konsentrasi" class="form-control" placeholder="Konsentrasi .." required>
                            </div>
                            <div class="form-group">
                                <label for="kelas">Kelas</label>
                                <input type="text" name="kelas" value="<?= $prodi->kelas ?>" id="kelas" class="form-control" placeholder="Kelas .." required>
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