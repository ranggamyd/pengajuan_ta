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
            <li><a href="<?= base_url('admin/management/admin') ?>">Manajemen User</a></li>
            <li class="active">Detail Admin</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-3">

                <!-- Profile Image -->
                <div class="box box-primary">
                    <div class="box-body box-profile">
                        <img class="profile-user-img img-responsive img-circle" src="<?= base_url('assets') ?>/admin/dist/img/user2-160x160.jpg" alt="Avatar">
                        <h3 class="profile-username text-center"><?= $admin->nama_admin ?></h3>
                        <p class="text-muted text-center"><?= $admin->jabatan ?></p>
                    </div><!-- /.box-body -->
                    <div class="box-footer text-center">
                        <button type="button" onclick="window.history.go(-1)" class="btn btn-secondary">Kembali</button>
                    </div>
                </div><!-- /.box -->

            </div><!-- /.col -->
            <div class="col-md-9">
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#profile" data-toggle="tab">Detail Admin</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="active tab-pane" id="profile">
                            <table class="table table-bordered table-striped table-hover">
                                <tr>
                                    <th>Username</th>
                                    <td><?= $admin->username ?></td>
                                </tr>
                                <tr>
                                    <th>Nama admin</th>
                                    <td><?= $admin->nama_admin ?></td>
                                </tr>
                                <tr>
                                    <th>Jenis Kelamin</th>
                                    <td>
                                        <?php
                                        if ($admin->jenis_kelamin == 'L') {
                                            echo 'Laki-laki';
                                        } else {
                                            echo 'Perempuan';
                                        }
                                        ?>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Jabatan</th>
                                    <td><?= $admin->jabatan ?></td>
                                </tr>
                                <tr>
                                    <th>Role</th>
                                    <td><?= $admin->role ?></td>
                                </tr>
                            </table>
                        </div>
                    </div><!-- /.tab-content -->
                </div><!-- /.nav-tabs-custom -->
            </div><!-- /.col -->
        </div><!-- /.row -->

    </section><!-- /.content -->
</div><!-- /.content-wrapper -->