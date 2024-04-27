<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title ?> &mdash; Pengajuan Skripsi</title>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <link rel="stylesheet" href="<?= base_url('assets') ?>/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?= base_url('assets') ?>/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?= base_url('assets') ?>/css/owl.carousel.css">
    <link rel="stylesheet" href="<?= base_url('assets') ?>/css/owl.theme.default.min.css">

    <!-- MAIN CSS -->
    <link rel="stylesheet" href="<?= base_url('assets') ?>/css/style.css">

</head>

<body id="top" data-spy="scroll" data-target=".navbar-collapse" data-offset="50">

    <!-- PRE LOADER -->
    <section class="preloader">
        <div class="spinner">
            <span class="spinner-rotate"></span>
        </div>
    </section>

    <!-- MENU -->
    <section class="navbar custom-navbar navbar-fixed-top" role="navigation">
        <div class="container">

            <div class="navbar-header">
                <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon icon-bar"></span>
                    <span class="icon icon-bar"></span>
                    <span class="icon icon-bar"></span>
                </button>

                <a href="<?= base_url() ?>" class="navbar-brand">Pengajuan Skripsi</a>
            </div>

            <!-- MENU LINKS -->
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-nav-first">
                    <li class="<?php if ($this->uri->segment(1) == '' || $this->uri->segment(1) == 'home') echo 'active' ?>"><a href="<?= base_url() ?>" class="smoothScroll">Home</a></li>
                    <li class="<?php if ($this->uri->segment(1) == 'pengumuman') echo 'active' ?>"><a href="<?= base_url('pengumuman') ?>" class="smoothScroll">Pengumuman</a></li>
                    <li class="<?php if ($this->uri->segment(1) == 'artikel') echo 'active' ?>"><a href="<?= base_url('artikel') ?>" class="smoothScroll">Artikel</a></li>
                </ul>

                <ul class="nav navbar-nav navbar-right">
                    <li><a href="<?= base_url('login') ?>"><i class="fa fa-sign-in"></i> LOGIN</a></li>
                </ul>
            </div>

        </div>
    </section>