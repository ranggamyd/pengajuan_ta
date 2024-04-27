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
                            <a href="#about" class="section-btn btn btn-default smoothScroll">Lihat Pengumuman</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>

<section id="about">
    <div class="container">
        <div class="row">

            <div class="col-sm-12">
                <div class="about-info">
                    <h2>Daftar Pengumuman Seputar Skripsi</h2>
                    <div class="list-group">
                        <?php
                        $i = 1;
                        foreach ($pengumuman as $data) :
                        ?>
                            <a href="<?= base_url('pengumuman/detail/') . $data['id_pengumuman'] ?>" class="list-group-item list-group-item-action flex-column align-items-start">
                                <span style="   float: left;
                                                margin-left: -15px;
                                                padding: 15px 20px;
                                                position: relative;
                                                top: 20px;">
                                    <i class="fa fa-search" style=" background: #29ca8e;
                                                                    border-radius: 50px;
                                                                    color: #ffffff;
                                                                    font-size: 25px;
                                                                    width: 50px;
                                                                    height: 50px;
                                                                    line-height: 50px;
                                                                    text-align: center;"></i>
                                </span>
                                <div class="d-flex w-100 justify-content-between">
                                    <h3 class="mb-1"><?= $data['judul'] ?></h3>
                                    <small class="text-muted"><?= date('d / m / Y', strtotime($data['created_at'])) ?> by : <?= $data['nama_admin'] ?></small>
                                </div>
                                <p class="mb-1" style=" display: block;
                                                    display: -webkit-box;
                                                    -webkit-line-clamp: 2;
                                                    -webkit-box-orient: vertical;
                                                    overflow: hidden;
                                                    text-overflow: ellipsis;">
                                    <?= strip_tags($data['isi']) ?><br>
                                </p>
                            </a>
                        <?php endforeach ?>
                    </div>
                </div>
                <div class="text-center">
                    <?= $this->pagination->create_links() ?>
                </div>
            </div>

        </div>
    </div>
</section>