<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Halaman Pengumuman
            <small>Admin Area</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url('admin') ?>"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="<?= base_url('admin/page/pengumuman') ?>">Halaman Pengumuman</a></li>
            <li class="active">Detail Pengumuman</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">

                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Detail Pengumuman</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <h1><?= $pengumuman->judul ?></h1>
                        <p style="margin-top: 3%;"><?= nl2br($pengumuman->isi) ?></p>
                        <hr>
                        <h5 style="margin-bottom: 0;"><i>Ditulis Oleh : <?= $this->db->get_where('user_admin', ['id_admin' => $pengumuman->created_by])->row('nama_admin') ?></i></h5>
                        <h5 style="margin-top: 0;"><i>Pada tanggal : <?= date('d-M-Y, H:i', strtotime($pengumuman->created_at)) ?></i></h5>
                        <?php if ($pengumuman->created_at != $pengumuman->updated_at) : ?>
                            <h5 style="margin-bottom: 0;"><i>Diubah Oleh : <?= $this->db->get_where('user_admin', ['id_admin' => $pengumuman->updated_by])->row('nama_admin') ?></i></h5>
                            <h5 style="margin-top: 0;"><i>Pada tanggal : <?= date('d-M-Y, H:i', strtotime($pengumuman->updated_at)) ?></i></h5>
                        <?php endif ?>
                    </div><!-- /.box-body -->
                    <div class="box-footer">
                        <button type="button" onclick="window.history.go(-1)" class="btn btn-secondary">Kembali</button>
                    </div>
                </div><!-- /.box -->
            </div><!-- /.col -->
        </div><!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->