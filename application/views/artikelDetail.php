<!-- HOME -->
<section id="home">
    <div class="row">
        <div class="owl-carousel owl-theme home-slider">

            <div class="item item-first" style="background-image: url(<?= base_url('assets') ?>/images/slider-image1.jpg); background-position: center;">
                <div class="caption">
                    <div class="container">
                        <div class="col-sm-12 text-center">
                            <img src="<?= base_url('assets') ?>/images/logo.png" alt="Logo" style="max-width: 150px; margin: 0 auto;">
                            <h1 style="text-shadow: 2px 2px #000;">FAKULTAS EKONOMI</h1>
                            <h2 style="text-shadow: 1.5px 1.5px #000; color: #fff; margin-top: 0;">UNIVERSITAS SWADAYA GUNUNG JATI</h2>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>

<section>
    <div class="container">
        <div class="row">

            <div class="col-sm-12">
                <div class="section-title">
                    <h2><?= $artikel->judul_halaman ?> <small><?= $artikel->nama_admin ?></small></h2>
                </div>
            </div>

        </div>
        <div class="row">
            <div class="col-sm-12">
                <p><?= $artikel->isi_halaman ?></p>
                <button class="btn btn-lg btn-success" onclick="window.history.go(-1)" style="margin-top: 3%;"><i class="fa fa-arrow-left"> </i> Kembali</button>
            </div>
        </div>
    </div>
</section>