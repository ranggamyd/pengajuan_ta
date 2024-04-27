<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Laporan
            <small>Admin Area</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url('admin') ?>"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="<?= base_url('admin/report/penguji') ?>">Laporan</a></li>
            <li class="active">Laporan Data Penguji</li>
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
                    <form action="<?= base_url('admin/report/penguji_filter') ?>" method="POST" role="form">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="penguji">Nama Penguji</label>
                                <select name="penguji" id="penguji" class="form-control">
                                    <option selected disabled>Pilih Penguji ..</option>
                                    <?php
                                    $this->db->join('user_penguji', 'user_penguji.id_penguji = detail_ujian.id_penguji');
                                    $this->db->group_by('detail_ujian.id_penguji');
                                    foreach ($this->db->get('detail_ujian')->result_array() as $data) :
                                    ?>
                                        <option value="<?= $data['id_penguji'] ?>" <?php if ($data['id_penguji'] == $id_penguji) echo 'selected' ?>><?= $data['nama_penguji'] ?></option>
                                    <?php endforeach ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for=tahun">Tahun</label>
                                <select name="tahun" id=tahun" class="form-control">
                                    <option selected disabled>Pilih Tahun ..</option>
                                    <?php
                                    $thn = $this->db->query(
                                        "SELECT 
                                            YEAR(`detail_ujian`.`tgl_ujian`) AS tahun
                                        FROM `user_penguji`
                                            INNER JOIN `detail_ujian` ON `detail_ujian`.`id_penguji` = `user_penguji`.`id_penguji` 
                                            INNER JOIN `ta_ujian` ON `ta_ujian`.`id_detail` = `detail_ujian`.`id_detail` 
                                        GROUP BY 
                                            YEAR(`detail_ujian`.`tgl_ujian`)
                                        HAVING COUNT(`ta_ujian`.`id_detail`)%3 = 0
                                        "
                                    )->result_array();
                                    foreach ($thn as $data) :
                                    ?>
                                        <option value="<?= $data['tahun'] ?>" <?php if ($data['tahun'] == $tahun) echo 'selected' ?>><?= $data['tahun'] ?></option>
                                    <?php endforeach ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="prodi">Prodi</label>
                                <select name="prodi" id=prodi" class="form-control">
                                    <option selected disabled>Pilih Prodi ..</option>
                                    <?php
                                    $this->db->join('user_mahasiswa', 'user_mahasiswa.id_mahasiswa = detail_ujian.id_mahasiswa');
                                    $this->db->group_by('user_mahasiswa.prodi');
                                    foreach ($this->db->get('detail_ujian')->result_array() as $data) :
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
                            <a href="<?= base_url('admin/report/penguji_excel') ?>" class="btn btn-success btn-block"><i class="fa fa-table"></i> Export ke Excel</a>
                            <a href="<?= base_url('admin/report/penguji_pdf') ?>" class="btn btn-danger btn-block"><i class="fa fa-file"></i> Export ke PDF</a>
                        </div>
                    </form>
                </div><!-- /.box -->
            </div><!-- /.col -->
            <div class="col-md-9">

                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Laporan Data Penguji</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <div class="table-responsive">
                            <table id="example1" class="table table-bordered table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>NIK</th>
                                        <th>Nama Penguji</th>
                                        <th>Jumlah Mahasiswa</th>
                                        <th>Tahun</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php                                    
                                    $i = 1;
                                    foreach ($penguji as $data) :
                                        // $count = $this->db->get_where('ta_ajuan', ['id_penguji' => $data['id_penguji'], 'submit' => 1, 'hasil_ujian' => 'diterima'])->num_rows();
                                        // if ($count < 3) :
                                    ?>
                                        <tr>
                                            <th><?= $i++ ?></th>
                                            <td><?= $data['nik'] ?></td>
                                            <td><?= $data['nama_penguji'] ?></td>
                                            <td><?= $data['jumlah_mahasiswa'] ?></td>
                                            <td><?= $data['tahun'] ?></td>
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