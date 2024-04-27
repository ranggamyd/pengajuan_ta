<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Judul Ajuan Saya
            <small>Mahasiswa Area</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= base_url('mahasiswa') ?>"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="<?= base_url('mahasiswa/ajuan') ?>">Judul Ajuan Saya</a></li>
            <li class="active">Tambah Judul Skripsi</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-sm-12">
                <div class="callout callout-info">
                    <h4>Informasi</h4>
                    <p>Sebelum mengajukan judul skripsi, anda sebaiknya mengecek judul anda di menu <a href="<?= base_url('mahasiswa/findAjuan') ?>" target="_blank" rel="noopener noreferrer"><kbd>Cari Judul</kbd></a> agar tidak terdapat judul yang serupa. Jika saat verifikasi judul terdapat kesamaan dengan judul yang sudah pernah diajukan orang lain maka akan ditolak.</p>
                    <p>Apabila Anda sudah mengisi kolom Judul Ajuan dilanjutkan dengan menekan tombol <kbd>Tambah</kbd> kemudian muncul pemberitahuan <strong>"Judul Ajuan sudah ada"</strong> , itu berarti Judul Ajuan yang Anda akan ajukan sudah ada yang mengajukan sebelumnya dengan judul yang sama dan Anda harus mengganti judul ajuan tersebut.</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <?php if ($this->session->flashdata('error')) : ?>
                    <div class="alert alert-danger">
                        <a href="#" class="close" data-dismiss="alert">&times;</a>
                        <strong>Gagal !</strong> <?php echo $this->session->flashdata('error'); ?>
                    </div>
                <?php endif ?>
            </div>
        </div>
        <div class="row">

            <div class="col-sm-12">

                <!-- general form elements -->
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Tambah Judul Skripsi</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <form action="<?= base_url('mahasiswa/ajuan/proses_add') ?>" method="POST" role="form">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="judul_ajuan">judul Ajuan</label>
                                <textarea name="judul_ajuan" id="judul_ajuan" class="form-control" rows="5" placeholder="Tuliskan judul .." required></textarea>
                            </div>
                        </div><!-- /.box-body -->
                        <div class="box-footer">
                            <button type="button" onclick="window.history.go(-1)" class="btn btn-secondary">Kembali</button>
                            <button type="submit" class="btn btn-primary">Tambah</button>
                        </div>
                    </form>
                </div><!-- /.box -->
            </div><!-- /.col -->

        </div><!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->