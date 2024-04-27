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
            <li class="active">Detail Artikel</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">

                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Detail Artikel</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <h1><?= $artikel->judul_halaman ?></h1>
                        <p style="margin-top: 3%;"><?= nl2br($artikel->isi_halaman) ?></p>
                        <hr>
                        <h5 style="margin-bottom: 0;"><i>Ditulis Oleh : <?= $this->db->get_where('user_admin', ['id_admin' => $artikel->created_by])->row('nama_admin') ?></i></h5>
                        <h5 style="margin-top: 0;"><i>Pada tanggal : <?= date('d-M-Y, H:i', strtotime($artikel->created_at)) ?></i></h5>
                        <?php if ($artikel->created_at != $artikel->updated_at) : ?>
                            <h5 style="margin-bottom: 0;"><i>Diubah Oleh : <?= $this->db->get_where('user_admin', ['id_admin' => $artikel->updated_by])->row('nama_admin') ?></i></h5>
                            <h5 style="margin-top: 0;"><i>Pada tanggal : <?= date('d-M-Y, H:i', strtotime($artikel->updated_at)) ?></i></h5>
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