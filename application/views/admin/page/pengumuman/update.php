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
            <li class="active">Edit Pengumuman</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">

            <div class="col-md-10 col-sm-12">
                <!-- general form elements -->
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Edit Pengumuman</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <form action="<?= base_url('admin/page/proses_update_pengumuman') ?>" method="POST" role="form">
                        <input type="hidden" name="id_pengumuman" value="<?= $pengumuman->id_pengumuman ?>">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="judul">Judul Pengumuman</label>
                                <input type="text" name="judul" value="<?= $pengumuman->judul ?>" id="judul" class="form-control" placeholder="Judul Pengumuman .." required>
                            </div>
                            <div class="form-group">
                                <label for="isi">Isi Pengumuman</label>
                                <textarea name="isi" id="isi" class="form-control" rows="5" placeholder="Isi Pengumuman .." required><?= $pengumuman->isi ?></textarea>
                            </div>
                        </div><!-- /.box-body -->
                        <div class="box-footer">
                            <button type="button" onclick="window.history.go(-1)" class="btn btn-secondary">Kembali</button>
                            <button type="submit" class="btn btn-primary">Edit</button>
                        </div>
                    </form>
                </div><!-- /.box -->

            </div><!-- /.col -->

        </div><!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->