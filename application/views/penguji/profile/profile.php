<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Profil Saya
            <small>Penguji Area</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url('penguji') ?>"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="<?= base_url('penguji/profile') ?>">Profil Saya</a></li>
            <li class="active">Detail Profil</li>
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
                        <strong>Gagal !</strong> <?php echo $this->session->flashdata('error'); ?><?= validation_errors() ?>
                    </div>
                <?php endif ?>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">

                <!-- Profile Image -->
                <div class="box box-primary">
                    <div class="box-body box-profile">
                        <?php if ($this->session->userdata('jenis_kelamin') == 'L') : ?>
                            <img src="<?= base_url('assets') ?>/images/avatar-L.jpg" class="profile-user-img img-responsive img-circle" alt="Avatar">
                        <?php else : ?>
                            <img src="<?= base_url('assets') ?>/images/avatar-P.jpg" class="profile-user-img img-responsive img-circle" alt="Avatar">
                        <?php endif ?>
                        <h3 class="profile-username text-center"><?= $penguji->nama_penguji ?></h3>
                        <p class="text-muted text-center"><?= $penguji->nik ?></p>
                        <p class="text-center"><?= $penguji->jafung ?></p>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->

            </div><!-- /.col -->
            <div class="col-md-9">
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#profile" data-toggle="tab">Profil</a></li>
                        <li><a href="#settings" data-toggle="tab">Ubah Sandi</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="active tab-pane" id="profile">
                            <table class="table table-bordered table-striped table-hover">
                                <tr>
                                    <th>NIK</th>
                                    <td><?= $penguji->nik ?></td>
                                </tr>
                                <tr>
                                    <th>Nama penguji</th>
                                    <td><?= $penguji->nama_penguji ?></td>
                                </tr>
                                <tr>
                                    <th>Jenis Kelamin</th>
                                    <td>
                                        <?= $penguji->jenis_kelamin = 'L' ? 'Laki-laki' : 'Perempuan'; ?>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Jabatan Fungsional</th>
                                    <td><?= $penguji->jafung ?></td>
                                </tr>
                            </table>
                        </div><!-- /.tab-pane -->

                        <div class="tab-pane" id="settings">
                            <form action="<?= base_url('penguji/profile/update_password') ?>" method="POST" class="form-horizontal">
                                <div class="form-group">
                                    <label for="username" class="col-sm-2 control-label">Username</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="username" class="form-control" id="username" placeholder="Username .." required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="past_password" class="col-sm-2 control-label">Password Lama</label>
                                    <div class="col-sm-10">
                                        <input type="password" name="past_password" class="form-control" id="past_password" placeholder="Password Lama .." required>
                                    </div>
                                </div>
                                <hr>
                                <div class="form-group">
                                    <label for="new_password" class="col-sm-2 control-label">Password Baru</label>
                                    <div class="col-sm-10">
                                        <input type="password" name="new" class="form-control" id="new_password" placeholder="Password Baru .." required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="confirm" class="col-sm-2 control-label">Konfirmasi</label>
                                    <div class="col-sm-10">
                                        <input type="password" name="re_new" class="form-control" id="confirm" placeholder="Konfirmasi Password .." required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-danger">Ubah</button>
                                    </div>
                                </div>
                            </form>
                        </div><!-- /.tab-pane -->
                    </div><!-- /.tab-content -->
                </div><!-- /.nav-tabs-custom -->
            </div><!-- /.col -->
        </div><!-- /.row -->

    </section><!-- /.content -->
</div><!-- /.content-wrapper -->