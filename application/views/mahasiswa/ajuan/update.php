<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Judul Ajuan Saya
            <small>Mahasiswa Area</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url('mahasiswa') ?>"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="<?= base_url('mahasiswa/ajuan') ?>">Judul Ajuan Saya</a></li>
            <li class="active">Update Judul Skripsi</li>
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

            <div class="col-sm-12">

                <!-- general form elements -->
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Update Judul Skripsi</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <form action="<?= base_url('mahasiswa/ajuan/proses_update') ?>" method="POST" role="form">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="judul_ajuan">judul Ajuan</label>
                                <textarea name="judul_ajuan" id="judul_ajuan" class="form-control" rows="5" placeholder="Tuliskan judul .." required><?= $ajuan->judul_ajuan ?></textarea>
                                <input type="hidden" value="<?= $id_ajuan ?>" name="id_ajuan">
                            </div>
                        </div><!-- /.box-body -->
                        <div class="box-footer">
                            <button type="button" onclick="window.history.go(-1)" class="btn btn-secondary">Kembali</button>
                            <button type="submit" class="btn btn-primary">Update</button>
                        </div>
                    </form>
                </div><!-- /.box -->
            </div><!-- /.col -->

        </div><!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->