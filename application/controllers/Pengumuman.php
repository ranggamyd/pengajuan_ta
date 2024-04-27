<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pengumuman extends CI_Controller
{
    public function loadView($file, $data)
    {
        $this->load->view('layouts/header', $data);
        $this->load->view($file, $data);
        $this->load->view('layouts/footer', $data);
    }

    public function index()
    {
        $config['base_url'] = base_url('pengumuman/index');
        $config['start'] = $this->uri->segment(3);
        $config['per_page'] = 10;
        $config['total_rows'] = $this->db->get('pengumuman')->num_rows();

        $config['full_tag_open']    =   '<nav aria-label="Page navigation example"><ul class="pagination justify-content-center">';
        $config['first_tag_open']   =       '<li class="page-item">';
        $config['first_link']       =           '<span class="page-link prev-tag">Awal</span>';
        $config['first_tag_close']  =       '</li>';
        $config['prev_tag_open']    =       '<li class="page-item">';
        $config['prev_link']        =           '<span class="page-link prev-tag">Sebelumnnya</span>';
        $config['prev_tag_close']   =       '</li>';
        $config['cur_tag_open']     =       '<li class="page-item active"><a href="#!"><span class="page-link"><span class="sr-only">(current)</span>';
        $config['cur_tag_close']    =       '</span></li>';
        $config['num_tag_open']     =       '<li class="page-item">';
        $config['num_tag_close']    =       '</li>';
        $config['next_tag_open']    =       '<li class="page-item">';
        $config['next_link']        =           '<span class="page-link next-tag">Selanjutnya</span>';
        $config['next_tag_close']   =       '</li>';
        $config['last_tag_open']    =       '<li class="page-item">';
        $config['last_link']        =           '<span class="page-link next-tag">Akhir</span>';
        $config['last_tag_close']   =       '</li>';
        $config['full_tag_close']   =   '</ul></nav>';

        $this->pagination->initialize($config);

        $this->db->join('user_admin', 'user_admin.id_admin = pengumuman.created_by');
        $this->db->order_by('created_at', 'desc');
        $data['pengumuman'] = $this->db->get('pengumuman', $config['per_page'], $config['start'])->result_array();

        $data['title'] = 'Pengumuman';
        $this->loadView('pengumuman', $data);
    }

    public function detail($id)
    {
        $this->db->join('user_admin', 'user_admin.id_admin = pengumuman.created_by');
        $data['pengumuman'] = $this->db->get_where('pengumuman', ['id_pengumuman' => $id])->row();

        $data['title'] = $data['pengumuman']->judul;
        $this->loadView('pengumumanDetail', $data);
    }
}

/* End of file Pengumuman.php */
