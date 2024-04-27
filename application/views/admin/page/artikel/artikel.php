<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Halaman Artikel
            <small>Admin Area</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url('admin') ?>"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="<?= base_url('admin/page/artikel') ?>">Halaman Artikel</a></li>
            <li class="active">Daftar Artikel</li>
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
                <a href="<?= base_url('admin/page/add_artikel') ?>" class="btn btn-primary"><i class="fa fa-plus" style="margin-right: 5%;"></i> Tambah Artikel</a>
            </div>
        </div><br>
        <div class="row">
            <div class="col-xs-12">

                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Daftar Artikel</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <table id="example1" class="table table-bordered table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Judul Artikel</th>
                                    <!-- <th>Isi</th> -->
                                    <th>Ditulis</th>
                                    <th>Diubah</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $i = 1;
                                foreach ($artikel as $data) :
                                ?>
                                    <tr>
                                        <th><?= $i++ ?></th>
                                        <td><?= $data['judul_halaman'] ?></td>
                                        <!-- <td><?= $data['isi_halaman'] ?></td> -->
                                        <td><?= date('H:i, d-m-Y', strtotime($data['created_at'])) ?></td>
                                        <td><?= date('H:i, d-m-Y', strtotime($data['updated_at'])) ?></td>
                                        <td>
                                            <a href="<?= base_url('admin/page/detail_artikel/') . $data['id_halaman'] ?>" class="btn btn-flat" style="padding: 0;"><i class="fa fa-eye"></i></a>
                                            <a href="<?= base_url('admin/page/update_artikel/') . $data['id_halaman'] ?>" class="btn btn-flat" style="padding: 0;"><i class="fa fa-edit"></i></a>
                                            <a href="<?= base_url('admin/page/delete_artikel/') . $data['id_halaman'] ?>" onclick="confirm('Apakah anda yakin ingin menghapus data ini?')" class="btn btn-flat" style="padding: 0;"><i class="fa fa-trash"></i></a>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->
            </div><!-- /.col -->
        </div><!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->