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
                            <a href="#courses" class="section-btn btn btn-default smoothScroll">Lihat Artikel</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>

<!-- Courses -->
<section id="courses">
    <div class="container">
        <div class="row">

            <div class="col-lg-8 col-sm-12">
                <div class="section-title">
                    <h2>Pengumuman <small>lihat Daftar Pengumuman Lengkap <a href="<?= base_url('pengumuman') ?>">disini !</a></small></h2>
                </div>
                <div class="list-group">
                    <?php
                    $i = 1;
                    $this->db->limit(5);
                    $this->db->join('user_admin', 'user_admin.id_admin = pengumuman.created_by');
                    $this->db->order_by('created_at', 'desc');
                    foreach ($this->db->get('pengumuman')->result_array() as $data) :
                    ?>
                        <a href="<?= base_url('pengumuman/detail/') . $data['id_pengumuman'] ?>" class="list-group-item list-group-item-action flex-column align-items-start">
                            <div class="d-flex w-100 justify-content-between">
                                <h5 class="mb-1"><?= $data['judul'] ?></h5>
                            </div>
                            <p class="mb-1" style=" display: block;
                                                    display: -webkit-box;
                                                    -webkit-line-clamp: 2;
                                                    -webkit-box-orient: vertical;
                                                    overflow: hidden;
                                                    text-overflow: ellipsis;">
                                <?= strip_tags($data['isi']) ?>
                            </p>
                            <small class="text-muted"><?= date('d / m / Y', strtotime($data['created_at'])) ?> by : <?= $data['nama_admin'] ?></small>
                        </a>
                    <?php endforeach ?>
                    <a href="<?= base_url('pengumuman') ?>" class="list-group-item list-group-item-action flex-column align-items-start">
                        <div class="d-flex w-100 justify-content-between">
                            <h5 class="mb-1 text-center">Lihat lebih lengkap >></h5>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-lg-4 col-sm-12">
                <div class="section-title">
                    <h2>Artikel <small>lihat Daftar Artikel Lengkap <a href="<?= base_url('artikel') ?>">disini !</a></small></h2>
                </div>
                <div class="list-group">
                    <?php
                    $i = 1;
                    $this->db->limit(5);
                    $this->db->join('user_admin', 'user_admin.id_admin = halaman.created_by');
                    $this->db->order_by('created_at', 'desc');
                    foreach ($this->db->get('halaman')->result_array() as $data) :
                    ?>
                        <a href="<?= base_url('artikel/detail/') . $data['id_halaman'] ?>" class="list-group-item list-group-item-action flex-column align-items-start">
                            <div class="d-flex w-100 justify-content-between">
                                <h5 class="mb-1"><?= $data['judul_halaman'] ?></h5>
                            </div>
                            <p class="mb-1" style=" display: block;
                                                    display: -webkit-box;
                                                    -webkit-line-clamp: 2;
                                                    -webkit-box-orient: vertical;
                                                    overflow: hidden;
                                                    text-overflow: ellipsis;">
                                <?= strip_tags($data['isi_halaman']) ?>
                            </p>
                            <small class="text-muted"><?= date('d / m / Y', strtotime($data['created_at'])) ?> by : <?= $data['nama_admin'] ?></small>
                        </a>
                    <?php endforeach ?>
                    <a href="<?= base_url('artikel') ?>" class="list-group-item list-group-item-action flex-column align-items-start">
                        <div class="d-flex w-100 justify-content-between">
                            <h5 class="mb-1 text-center">Lihat lebih lengkap >></h5>
                        </div>
                    </a>
                </div>
            </div>

        </div>
    </div>
</section>