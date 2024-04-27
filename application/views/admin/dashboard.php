<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Dashboard
            <small>Admin Area</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url() . $this->session->userdata('role') ?>"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <!-- Main row -->
        <div class="row">
            <!-- Left col -->
            <div class="col-md-3">

                <!-- Profile Image -->
                <?php $admin = $this->db->get_where('user_admin', ['id_admin' => $this->session->userdata('id_admin')])->row() ?>
                <div class="box box-primary">
                    <div class="box-body box-profile text-center">
                        <?php if ($this->session->userdata('jenis_kelamin') == 'L') : ?>
                            <img src="<?= base_url('assets') ?>/images/avatar-L.jpg" class="profile-user-img img-responsive img-circle" alt="Avatar">
                        <?php else : ?>
                            <img src="<?= base_url('assets') ?>/images/avatar-P.jpg" class="profile-user-img img-responsive img-circle" alt="Avatar">
                        <?php endif ?>
                        <h3 class="profile-username text-center"><?= $this->session->userdata('username') ?></h3>
                        <p class="text-center"><?= $admin->nama_admin ?></p>
                        <p class="text-muted text-center"><?= $admin->jabatan ?></p>
                        <a href="<?= base_url('admin/profile') ?>" class="btn btn-block btn-primary text-center">Lihat Profil</a>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->

            </div><!-- /.col -->
            <section class="col-md-9">
                <!-- TO DO List -->
                <div class="box box-primary">
                    <div class="box-header">
                        <i class="ion ion-clipboard"></i>
                        <h3 class="box-title">Daftar Judul Skripsi Ajuan</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <div class="table-responsive">
                            <table id="example1" class="table table-bordered table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>NPM</th>
                                        <th>Nama Mahasiswa</th>
                                        <th>Kelas</th>
                                        <th>Semester</th>
                                        <th>Tahun Masuk</th>
                                        <th>Konsentrasi</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $i = 1;
                                    foreach ($ajuan as $data) :
                                        $count = $this->db->get_where('ta_ajuan', ['id_mahasiswa' => $data['id_mahasiswa'], 'submit' => 1, 'hasil_verifikasi' => 'diterima'])->num_rows();
                                        if ($count < 3) :
                                    ?>
                                            <tr>
                                                <th><?= $i++ ?></th>
                                                <td><?= $data['npm'] ?></td>
                                                <td><?= $data['nama_mahasiswa'] ?></td>
                                                <td><?= $data['kelas'] ?></td>
                                                <td><?= $data['semester'] ?></td>
                                                <td><?= $data['tahun_masuk'] ?></td>
                                                <td><?= $data['prodi'] ?></td>
                                                <td>
                                                    <?php if ($data['submit'] == '1') : ?>
                                                        <a href="<?= base_url('admin/ajuan/detail/') . $data['id_mahasiswa'] ?>" class="btn btn-success">Verifikasi Judul</a>
                                                    <?php endif ?>
                                                </td>
                                            </tr>
                                    <?php
                                        endif;
                                    endforeach;
                                    ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div><!-- /.box -->

            </section><!-- /.Left col -->
        </div><!-- /.row (main row) -->

    </section><!-- /.content -->
</div><!-- /.content-wrapper -->