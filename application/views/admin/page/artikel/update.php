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
            <li class="active">Edit Artikel</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">

            <div class="col-md-10 col-sm-12">
                <!-- general form elements -->
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Edit Artikel</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <form action="<?= base_url('admin/page/proses_update_artikel') ?>" method="POST" role="form">
                        <input type="hidden" name="id_halaman" value="<?= $artikel->id_halaman ?>">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="judul_halaman">Judul Halaman</label>
                                <input type="text" name="judul_halaman" value="<?= $artikel->judul_halaman ?>" id="judul_halaman" class="form-control" placeholder="Judul Halaman .." required>
                            </div>
                            <div class="form-group">
                                <label for="isi_halaman">Isi Artikel</label>
                                <textarea name="isi_halaman" id="isi_halaman" class="form-control" rows="5" placeholder="Isi Artikel .." required><?= $artikel->isi_halaman ?></textarea>
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