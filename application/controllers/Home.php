<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{
    public function loadView($file, $data)
    {
        $this->load->view('layouts/header', $data);
        $this->load->view($file, $data);
        $this->load->view('layouts/footer', $data);
    }

    public function index()
    {
        $data['title'] = 'Home';
        $this->loadView('home', $data);
    }
}

/* End of file Home.php */
