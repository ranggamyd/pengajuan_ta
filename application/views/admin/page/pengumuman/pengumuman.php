<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            pengumuman Pengumuman
            <small>Admin Area</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url('admin') ?>"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="<?= base_url('admin/page/pengumuman') ?>">pengumuman Pengumuman</a></li>
            <li class="active">Daftar Pengumuman</li>
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
                <a href="<?= base_url('admin/page/add_pengumuman') ?>" class="btn btn-primary"><i class="fa fa-plus" style="margin-right: 5%;"></i> Tambah Pengumuman</a>
            </div>
        </div><br>
        <div class="row">
            <div class="col-xs-12">

                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Daftar Pengumuman</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <table id="example1" class="table table-bordered table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Judul Pengumuman</th>
                                    <!-- <th>Isi</th> -->
                                    <th>Ditulis</th>
                                    <th>Diubah</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $i = 1;
                                foreach ($pengumuman as $data) :
                                ?>
                                    <tr>
                                        <th><?= $i++ ?></th>
                                        <td><?= $data['judul'] ?></td>
                                        <!-- <td><?= $data['isi'] ?></td> -->
                                        <td><?= date('d-M-Y, H:i', strtotime($data['created_at'])) ?></td>
                                        <td><?= date('d-M-Y, H:i', strtotime($data['updated_at'])) ?></td>
                                        <td>
                                            <a href="<?= base_url('admin/page/detail_pengumuman/') . $data['id_pengumuman'] ?>" class="btn btn-flat" style="padding: 0;"><i class="fa fa-eye"></i></a>
                                            <a href="<?= base_url('admin/page/update_pengumuman/') . $data['id_pengumuman'] ?>" class="btn btn-flat" style="padding: 0;"><i class="fa fa-edit"></i></a>
                                            <a href="<?= base_url('admin/page/delete_pengumuman/') . $data['id_pengumuman'] ?>" onclick="confirm('Apakah anda yakin ingin menghapus data ini?')" class="btn btn-flat" style="padding: 0;"><i class="fa fa-trash"></i></a>
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