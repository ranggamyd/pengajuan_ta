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
            <li class="active">Data Admin</li>
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
                <?php endif ?>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <a href="<?= base_url('admin/management/add_admin') ?>" class="btn btn-primary"><i class="fa fa-plus" style="margin-right: 5%;"></i> Tambah Admin</a>
            </div>
        </div><br>
        <div class="row">
            <div class="col-xs-12">

                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Data Admin</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <div class="table-responsive">
                            <table id="example1" class="table table-bordered table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Username</th>
                                        <th>Nama Admin</th>
                                        <th>Jenis Kelamin</th>
                                        <th>Jabatan</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $i = 1;
                                    foreach ($admin as $data) :
                                    ?>
                                        <tr>
                                            <th><?= $i++ ?></th>
                                            <td><?= $data['username'] ?></td>
                                            <td><?= $data['nama_admin'] ?></td>
                                            <td>
                                                <?php
                                                if ($data['jenis_kelamin'] == 'L') {
                                                    echo 'Laki-laki';
                                                } else {
                                                    echo 'Perempuan';
                                                }
                                                ?>
                                            </td>
                                            <td><?= $data['jabatan'] ?></td>
                                            <td>
                                                <a href="<?= base_url('admin/management/detail_admin/') . $data['id_admin'] ?>" class="btn btn-flat" style="padding: 0;"><i class="fa fa-eye"></i></a>
                                                <a href="<?= base_url('admin/management/update_admin/') . $data['id_admin'] ?>" class="btn btn-flat" style="padding: 0;"><i class="fa fa-edit"></i></a>
                                                <a href="<?= base_url('admin/management/delete_admin/') . $data['id_admin'] ?>" onclick="confirm('Apakah anda yakin ingin menghapus data ini?')" class="btn btn-flat" style="padding: 0;"><i class="fa fa-trash"></i></a>
                                            </td>
                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                            </table>
                        </div>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->
            </div><!-- /.col -->
        </div><!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->