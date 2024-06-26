<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?= $title ?> &mdash; Pengajuan Skripsi</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="<?= base_url('assets') ?>/admin/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="<?= base_url('assets') ?>/admin/plugins/datatables/dataTables.bootstrap.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?= base_url('assets') ?>/admin/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="<?= base_url('assets') ?>/admin/dist/css/skins/_all-skins.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="<?= base_url('assets') ?>/admin/plugins/iCheck/flat/blue.css">
    <!-- Morris chart -->
    <link rel="stylesheet" href="<?= base_url('assets') ?>/admin/plugins/morris/morris.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="<?= base_url('assets') ?>/admin/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- Date Picker -->
    <link rel="stylesheet" href="<?= base_url('assets') ?>/admin/plugins/datepicker/datepicker3.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="<?= base_url('assets') ?>/admin/plugins/daterangepicker/daterangepicker-bs3.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="<?= base_url('assets') ?>/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">

        <header class="main-header">
            <!-- Logo -->
            <a href="<?= base_url('penguji') ?>" class="logo">
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <span class="logo-mini"><b>P</b>S</span>
                <!-- logo for regular state and mobile devices -->
                <span class="logo-lg"><b>Pengajuan</b>Skripsi</span>
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                </a>
                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <?php if ($this->session->userdata('jenis_kelamin') == 'L') : ?>
                                    <img src="<?= base_url('assets') ?>/images/avatar-L.jpg" class="user-image" alt="Avatar">
                                <?php else : ?>
                                    <img src="<?= base_url('assets') ?>/images/avatar-P.jpg" class="user-image" alt="Avatar">
                                <?php endif ?>
                                <span class="hidden-xs"><?= $this->session->userdata('nama_penguji') ?></span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- User image -->
                                <li class="user-header">
                                    <?php if ($this->session->userdata('jenis_kelamin') == 'L') : ?>
                                        <img src="<?= base_url('assets') ?>/images/avatar-L.jpg" class="img-circle" alt="Avatar">
                                    <?php else : ?>
                                        <img src="<?= base_url('assets') ?>/images/avatar-P.jpg" class="img-circle" alt="Avatar">
                                    <?php endif ?>
                                    <p>
                                        <?= $this->session->userdata('nama_penguji') ?>
                                        <small><?= $this->session->userdata('nik') ?></small>
                                    </p>
                                </li>
                                <!-- Menu Footer-->
                                <li class="user-footer">
                                    <div class="pull-left">
                                        <a href="<?= base_url('penguji/profile') ?>" class="btn btn-default btn-flat">Profil</a>
                                    </div>
                                    <div class="pull-right">
                                        <a href="<?= base_url('auth/logout') ?>" class="btn btn-default btn-flat">Sign out</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="main-sidebar">
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">
                <!-- Sidebar user panel -->
                <div class="user-panel">
                    <div class="pull-left image">
                        <?php if ($this->session->userdata('jenis_kelamin') == 'L') : ?>
                            <img src="<?= base_url('assets') ?>/images/avatar-L.jpg" class="img-circle" alt="Avatar">
                        <?php else : ?>
                            <img src="<?= base_url('assets') ?>/images/avatar-P.jpg" class="img-circle" alt="Avatar">
                        <?php endif ?>
                    </div>
                    <div class="pull-left info">
                        <p><?= $this->session->userdata('nama_penguji') ?></p>
                        <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                    </div>
                </div>
                <!-- sidebar menu: : style can be found in sidebar.less -->
                <ul class="sidebar-menu">
                    <li class="header">MENU UTAMA</li>
                    <li class="<?php if ($this->uri->segment(2) == '' || $this->uri->segment(2) == 'dashboard') echo 'active' ?>">
                        <a href="<?= base_url('penguji') ?>">
                            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                        </a>
                    </li>
                    <li class="treeview <?php if ($this->uri->segment(2) == 'ajuan' || $this->uri->segment(2) == 'findAjuan') echo 'active' ?>">
                        <a href="#">
                            <i class="fa fa-edit"></i> <span>Judul Skripsi</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li class="<?php if ($this->uri->segment(2) == 'ajuan') echo 'active' ?>"><a href="<?= base_url('penguji/ajuan') ?>"><i class="fa fa-circle-o"></i> Judul Skripsi Ajuan</a></li>
                        </ul>
                    </li>
                    <li class="header">LAINNYA</li>
                    <li class="<?php if ($this->uri->segment(2) == 'profile') echo 'active' ?>"><a href="<?= base_url('penguji/profile') ?>"><i class="fa fa-circle-o text-aqua"></i> <span>Profil Saya</span></a></li>
                </ul>
            </section>
            <!-- /.sidebar -->
        </aside>