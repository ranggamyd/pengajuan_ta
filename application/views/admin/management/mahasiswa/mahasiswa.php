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
            <li class="active">Data Mahasiswa</li>
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
                <a href="<?= base_url('admin/management/add_mahasiswa') ?>" class="btn btn-primary"><i class="fa fa-plus" style="margin-right: 5%;"></i> Tambah Mahasiswa</a>
            </div>
        </div><br>
        <div class="row">
            <div class="col-xs-12">

                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Data Mahasiswa</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <div class="table-responsive">
                            <table id="example1" class="table table-bordered table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Username / NPM</th>
                                        <th>Nama Mahasiswa</th>
                                        <th>Jenis Kelamin</th>
                                        <th>Kelas</th>
                                        <th>Semester</th>
                                        <th>Tahun Masuk</th>
                                        <th>Prodi</th>
                                        <th>Konsentrasi</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $i = 1;
                                    foreach ($mahasiswa as $data) :
                                    ?>
                                        <tr>
                                            <th><?= $i++ ?></th>
                                            <td>
                                                <?php
                                                if ($data['username'] = $data['npm']) {
                                                    echo $data['username'];
                                                } else {
                                                    echo $data['username'] . '/' . $data['npm'];
                                                }
                                                ?>
                                            </td>
                                            <td><?= $data['nama_mahasiswa'] ?></td>
                                            <td>
                                                <?php
                                                if ($data['jenis_kelamin'] == 'L') {
                                                    echo 'Laki-laki';
                                                } else {
                                                    echo 'Perempuan';
                                                }
                                                ?>
                                            </td>
                                            <td><?= $data['kelas'] ?></td>
                                            <td><?= $data['semester'] ?></td>
                                            <td><?= $data['tahun_masuk'] ?></td>
                                            <td><?= $data['prodi'] ?></td>
                                            <td><?= $data['konsentrasi'] ?></td>
                                            <td>
                                                <a href="<?= base_url('admin/management/detail_mahasiswa/') . $data['id_mahasiswa'] ?>" class="btn btn-flat" style="padding: 0;"><i class="fa fa-eye"></i></a>
                                                <a href="<?= base_url('admin/management/update_mahasiswa/') . $data['id_mahasiswa'] ?>" class="btn btn-flat" style="padding: 0;"><i class="fa fa-edit"></i></a>
                                                <a href="<?= base_url('admin/management/delete_mahasiswa/') . $data['id_mahasiswa'] ?>" onclick="confirm('Apakah anda yakin ingin menghapus data ini?')" class="btn btn-flat" style="padding: 0;"><i class="fa fa-trash"></i></a>
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