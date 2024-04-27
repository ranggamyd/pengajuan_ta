<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Halaman Media
            <small>Admin Area</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url('admin') ?>"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="<?= base_url('admin/page/pengumuman') ?>">Halaman Media</a></li>
            <li class="active">Daftar Media</li>
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
                <?php elseif ($this->session->flashdata('error')) : ?>
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
                    <!-- form start -->
                    <form action="<?= base_url('admin/page/proses_update_logo') ?>" method="POST" enctype="multipart/form-data" role="form">
                        <div class="box-body box-profile">
                            <h3 class="profile-username text-center">Logo</h3>
                            <img src="<?= base_url('assets') ?>/images/logo.png" alt="Logo" class="img-thumbnail" style="width: 100%; height: 300px; object-fit: cover;">
                            <div class="form-group" style="margin-top: 10px;">
                                <label for="logo">Edit Logo</label>
                                <input type="file" name="logo" id="logo" class="form-control-file" required>
                                <input type="hidden" name="prevLogo" value="<?= base_url('assets') ?>/images/logo.png">
                            </div>
                        </div><!-- /.box-body -->
                        <div class="box-footer">
                            <button type="button" onclick="window.history.go(-1)" class="btn btn-secondary">Kembali</button>
                            <button type="submit" class="btn btn-primary">Edit Logo</button>
                        </div>
                    </form>
                </div><!-- /.box -->
            </div>
            <div class="col-md-8">
                <div class="box">
                    <!-- form start -->
                    <form action="<?= base_url('admin/page/proses_update_banner') ?>" method="POST" enctype="multipart/form-data" role="form">
                        <div class="box-body box-profile">
                            <h3 class="profile-username text-center">Banner</h3>
                            <img src="<?= base_url('assets') ?>/images/slider-image1.jpg" alt="Banner" class="img-thumbnail" style="width: 100%; height: 300px; object-fit: cover;">
                            <div class="form-group" style="margin-top: 10px;">
                                <label for="banner">Edit Banner</label>
                                <input type="file" name="banner" id="banner" class="form-control-file" required>
                                <input type="hidden" name="prevBanner" value="<?= base_url('assets') ?>/images/slider-image1.jpg">
                            </div>
                        </div><!-- /.box-body -->
                        <div class="box-footer">
                            <button type="button" onclick="window.history.go(-1)" class="btn btn-secondary">Kembali</button>
                            <button type="submit" class="btn btn-primary">Edit Banner</button>
                        </div>
                    </form>
                </div><!-- /.box -->
            </div>
            <div class="col-md-4">
                <div class="box">
                    <!-- form start -->
                    <form action="<?= base_url('admin/page/proses_update_avatar_male') ?>" method="POST" enctype="multipart/form-data" role="form">
                        <div class="box-body box-profile">
                            <h3 class="profile-username text-center">Avatar User Male</h3>
                            <img src="<?= base_url('assets') ?>/images/avatar-L.jpg" class="img-thumbnail" alt="Avatar">
                            <div class="form-group" style="margin-top: 10px;">
                                <label for="avatar">Edit Avatar</label>
                                <input type="file" name="avatar" id="avatar" class="form-control-file" required>
                                <input type="hidden" name="prevavatar" value="<?= base_url('assets') ?>/images/avatar-L.jpg">
                            </div>
                        </div><!-- /.box-body -->
                        <div class="box-footer">
                            <button type="button" onclick="window.history.go(-1)" class="btn btn-secondary">Kembali</button>
                            <button type="submit" class="btn btn-primary">Edit Avatar</button>
                        </div>
                    </form>
                </div><!-- /.box -->
            </div>
            <div class="col-md-4">
                <div class="box">
                    <!-- form start -->
                    <form action="<?= base_url('admin/page/proses_update_avatar_female') ?>" method="POST" enctype="multipart/form-data" role="form">
                        <div class="box-body box-profile">
                            <h3 class="profile-username text-center">Avatar User Female</h3>
                            <img src="<?= base_url('assets') ?>/images/avatar-P.jpg" class="img-thumbnail" alt="Avatar">
                            <div class="form-group" style="margin-top: 10px;">
                                <label for="avatar">Edit Avatar</label>
                                <input type="file" name="avatar" id="avatar" class="form-control-file" required>
                                <input type="hidden" name="prevavatar" value="<?= base_url('assets') ?>/images/avatar-Pjpg">
                            </div>
                        </div><!-- /.box-body -->
                        <div class="box-footer">
                            <button type="button" onclick="window.history.go(-1)" class="btn btn-secondary">Kembali</button>
                            <button type="submit" class="btn btn-primary">Edit Avatar</button>
                        </div>
                    </form>
                </div><!-- /.box -->
            </div>

        </div><!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->