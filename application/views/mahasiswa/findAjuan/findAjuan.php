<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Cari Judul Ajuan
            <small>Mahasiswa Area</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url('mahasiswa') ?>"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="<?= base_url('mahasiswa/findAjuan') ?>">Cari Judul Ajuan</a></li>
            <li class="active">Daftar Judul Ajuan</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">

            <div class="col-sm-12">

                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Daftar Judul Ajuan</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <div class="table-responsive">
                            <table id="example1" class="table table-bordered table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Nama Mahasiswa</th>
                                        <th>Judul Ajuan</th>
                                        <th>Konsentrasi</th>
                                        <th>Tahun Ajuan</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $i = 1;
                                    if (isset($search)) {
                                        $ajuan = $search;
                                        var_dump($m);
                                    } else {
                                        $ajuan = $ajuan;
                                    }
                                    foreach ($ajuan as $data) :
                                    ?>
                                        <tr>
                                            <th><?= $i++ ?></th>
                                            <td><?= $data['nama_mahasiswa'] ?></td>
                                            <td><?= $data['judul'] ?></td>
                                            <td><?= $data['prodi'] ?></td>
                                            <td><?= $data['tahun_ajuan'] ?></td>
                                        </tr>
                                    <?php endforeach ?>
                                </tbody>
                            </table>
                        </div>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->
            </div><!-- /.col -->

        </div><!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->