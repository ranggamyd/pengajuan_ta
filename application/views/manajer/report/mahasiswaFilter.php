<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Laporan
            <small>Manajer Area</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url('manajer') ?>"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="<?= base_url('manajer/report/mahasiswa') ?>">Laporan</a></li>
            <li class="active">Laporan Data Mahasiswa</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-3">

                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Filter Laporan</h3>
                    </div><!-- /.box-header -->
                    <form action="<?= base_url('manajer/report/mahasiswa_filter') ?>" method="POST" role="form">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="kelas">Kelas</label>
                                <select name="kelas" id="kelas" class="form-control">
                                    <option selected disabled>Pilih Kelas ..</option>
                                    <?php
                                    $this->db->group_by('kelas');
                                    foreach ($this->db->get('user_mahasiswa')->result_array() as $data) :
                                    ?>
                                        <option value="<?= $data['kelas'] ?>" <?php if ($data['kelas'] == $kelas) echo 'selected' ?>><?= $data['kelas'] ?></option>
                                    <?php endforeach ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for=tahun_masuk">Tahun Masuk</label>
                                <select name="tahun_masuk" id=tahun_masuk" class="form-control">
                                    <option selected disabled>Pilih Tahun Masuk ..</option>
                                    <?php
                                    $this->db->group_by('tahun_masuk');
                                    foreach ($this->db->get('user_mahasiswa')->result_array() as $data) :
                                    ?>
                                        <option value="<?= $data['tahun_masuk'] ?>" <?php if ($data['tahun_masuk'] == $tahun_masuk) echo 'selected' ?>><?= $data['tahun_masuk'] ?></option>
                                    <?php endforeach ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="prodi">Prodi</label>
                                <select name="prodi" id=prodi" class="form-control">
                                    <option selected disabled>Pilih Prodi ..</option>
                                    <?php
                                    $this->db->group_by('prodi');
                                    foreach ($this->db->get('user_mahasiswa')->result_array() as $data) :
                                    ?>
                                        <option value="<?= $data['prodi'] ?>" <?php if ($data['prodi'] == $prodi) echo 'selected' ?>><?= $data['prodi'] ?></option>
                                    <?php endforeach ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <button type="reset" class="btn btn-secondary">Reset</button>
                                <button type="submit" class="btn btn-primary">Cari</button>
                            </div>
                        </div><!-- /.box-body -->
                        <div class="box-footer">
                            <a href="<?= base_url("manajer/report/mahasiswa_excel/filter?kelas=$kelas&tahun_masuk=$tahun_masuk&prodi=$prodi") ?>" class="btn btn-success btn-block"><i class="fa fa-table"></i> Export ke Excel</a>
                            <a href="<?= base_url("manajer/report/mahasiswa_pdf/filter?kelas=$kelas&tahun_masuk=$tahun_masuk&prodi=$prodi") ?>" class="btn btn-danger btn-block"><i class="fa fa-file"></i> Export ke PDF</a>
                        </div>
                    </form>
                </div><!-- /.box -->
            </div><!-- /.col -->
            <div class="col-md-9">

                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Laporan Data Mahasiswa</h3>
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
                                        <th>Prodi</th>
                                        <th>Konsentrasi</th>
                                        <th>Jumlah Judul</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $i = 1;
                                    foreach ($mahasiswa as $data) :
                                        // $count = $this->db->get_where('ta_ajuan', ['id_mahasiswa' => $data['id_mahasiswa'], 'submit' => 1, 'hasil_ujian' => 'diterima'])->num_rows();
                                        // if ($count < 3) :
                                    ?>
                                            <tr>
                                                <th><?= $i++ ?></th>
                                                <td><?= $data['npm'] ?></td>
                                                <td><?= $data['nama_mahasiswa'] ?></td>
                                                <td><?= $data['kelas'] ?></td>
                                                <td><?= $data['semester'] ?></td>
                                                <td><?= $data['tahun_masuk'] ?></td>
                                                <td><?= $data['prodi'] ?></td>
                                                <td><?= $data['konsentrasi'] ?></td>
                                                <td><?= $data['jumlah_judul'] ?></td>
                                            </tr>
                                    <?php
                                        // endif;
                                    endforeach;
                                    ?>
                                </tbody>
                            </table>
                        </div>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->
            </div><!-- /.col -->
        </div><!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->