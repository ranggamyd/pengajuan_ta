<?php
defined('BASEPATH') or exit('No direct script access allowed');

// Load library phpspreadsheet
require('./vendor/autoload.php');

// use PhpOffice\PhpSpreadsheet\Helper\Sample;
use PhpOffice\PhpSpreadsheet\Exception;
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
// End load library phpspreadsheet

class Report extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        if (empty($this->session->userdata('status'))) {
            redirect('auth');
        }

        $this->load->model('report_model');
    }

    public function loadView($file, $data)
    {
        $this->load->view('admin/layouts/header', $data);
        $this->load->view('admin/report/' . $file, $data);
        $this->load->view('admin/layouts/footer', $data);
    }

    public function lolos_verifikasi()
    {
        $data['verified'] = $this->report_model->get_verified();

        $data['title'] = 'Laporan Skripsi lolos Verifikasi';
        $this->loadView('verified', $data);
    }

    public function lolos_verifikasi_filter()
    {
        $data['kelas'] = $this->input->post('kelas');
        $data['tahun_masuk'] = $this->input->post('tahun_masuk');
        $data['prodi'] = $this->input->post('prodi');

        $data['verified'] = $this->report_model->get_verified_filter();

        $data['title'] = 'Laporan Skripsi lolos Verifikasi';
        $this->loadView('verifiedFilter', $data);
    }

    public function lolos_verifikasi_pdf($filter = null)
    {
        if ($filter != null) {
            $verified = $this->report_model->get_verified_filter();
        } else {
            $verified = $this->report_model->get_verified();
        }

        $tanggal = date('d-m-Y');

        $pdf = new TCPDF('P', 'mm', 'A4', true, 'UTF-8', false);

        $pdf->SetFont('times', '', 10);

        $pdf->setHeaderData('', 0, '', '', array(0, 0, 0), array(255, 255, 255));

        $pdf->SetPrintHeader(false);
        $pdf->SetPrintFooter(false);

        $pdf->AddPage();

        // writeHTML($html, $ln=true, $fill=false, $reseth=false, $cell=false, $align='')
        // writeHTMLCell($w, $h, $x, $y, $html='', $border=0, $ln=0, $fill=0, $reseth=true, $align='', $autopadding=true)

        $html = '
            <h1>Laporan Skripsi Lolos Verifikasi per tanggal ' . $tanggal . '</h1>
            <table border="1" cellspacing="0" cellpadding="3">
                <thead>
                    <tr style="text-align: center; font-weight: bold;">
                        <th width="30">#</th>
                        <th>NPM</th>
                        <th>Nama Mahasiswa</th>
                        <th>Kelas</th>
                        <th>Semester</th>
                        <th>Tahun Masuk</th>
                        <th>Prodi</th>
                        <th width="73.9">Judul 1</th>
                        <th>Judul 2</th>
                        <th>Judul 3</th>
                    </tr>
                </thead>
                <tbody>';
        $i = 1;
        foreach ($verified as $data) :
            $html .= '
                    <tr>
                        <th width="30" style="text-align: center; font-weight: bold;">' . $i++ . '</th>
                        <td style="text-align: center;">' . $data['npm'] . '</td>
                        <td>' . $data['nama_mahasiswa'] . '</td>
                        <td style="text-align: center;">' . $data['kelas'] . '</td>
                        <td style="text-align: center;">' . $data['semester'] . '</td>
                        <td style="text-align: center;">' . $data['tahun_masuk'] . '</td>
                        <td>' . $data['prodi'] . '</td>
                        <td width="73.9">' . $data['judul_1'] . '</td>
                        <td>' . $data['judul_2'] . '</td>
                        <td>' . $data['judul_3'] . '</td>
                    </tr>';
        endforeach;
        $html .= '
                </tbody>
            </table>';

        $pdf->writeHTML($html, true, false, true, false, '');

        $pdf->lastPage();

        $pdf->Output("lolos_verifikasi - $tanggal.pdf", 'I');
    }

    public function lolos_verifikasi_excel($filter = null)
    {
        if ($filter != null) {
            $verified = $this->report_model->get_verified_filter();
        } else {
            $verified = $this->report_model->get_verified();
        }

        $tanggal = date('d-m-Y');

        $spreadsheet = new Spreadsheet();

        // Add some data
        $spreadsheet->setActiveSheetIndex(0)
            ->setCellValue('A1', '#')
            ->setCellValue('B1', 'NPM')
            ->setCellValue('C1', 'Nama Mahasiswa')
            ->setCellValue('D1', 'Kelas')
            ->setCellValue('E1', 'Semester')
            ->setCellValue('F1', 'Tahun Masuk')
            ->setCellValue('G1', 'Prodi')
            ->setCellValue('H1', 'Judul 1')
            ->setCellValue('I1', 'Judul 2')
            ->setCellValue('J1', 'Judul 3');

        // Miscellaneous glyphs, UTF-8
        $i = 2;
        $no = 1;
        foreach ($verified as $data) {
            $spreadsheet->setActiveSheetIndex(0)
                ->setCellValue('A' . $i, $no)
                ->setCellValue('B' . $i, $data['npm'])
                ->setCellValue('C' . $i, $data['nama_mahasiswa'])
                ->setCellValue('D' . $i, $data['kelas'])
                ->setCellValue('E' . $i, $data['semester'])
                ->setCellValue('F' . $i, $data['tahun_masuk'])
                ->setCellValue('G' . $i, $data['prodi'])
                ->setCellValue('H' . $i, $data['judul_1'])
                ->setCellValue('I' . $i, $data['judul_2'])
                ->setCellValue('J' . $i, $data['judul_3']);
            $spreadsheet->getActiveSheet()->getStyle("A1:J1")->getFont()->setBold(true);
            $i++;
            $no++;
        }

        // Rename worksheet
        $spreadsheet->getActiveSheet()->setTitle('lolos_verifikasi');

        // Styling column
        foreach (range('A', 'J') as $column) {
            $spreadsheet->getActiveSheet()->getColumnDimension($column)->setAutoSize(true);
        }

        // Set active sheet index to the first sheet, so Excel opens this as the first sheet
        $spreadsheet->setActiveSheetIndex(0);

        // Redirect output to a client’s web browser (Xlsx)
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename="lolos_verifikasi - ' . $tanggal . '.xlsx"');
        header('Cache-Control: max-age=0');
        // If you're serving to IE 9, then the following may be needed
        header('Cache-Control: max-age=1');

        // If you're serving to IE over SSL, then the following may be needed
        header('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); // Date in the past
        header('Last-Modified: ' . gmdate('D, d M Y H:i:s') . ' GMT'); // always modified
        header('Cache-Control: cache, must-revalidate'); // HTTP/1.1
        header('Pragma: public'); // HTTP/1.0

        $writer = IOFactory::createWriter($spreadsheet, 'Xlsx');
        $writer->save('php://output');
        exit;
    }

    public function tidak_lolos_verifikasi()
    {
        $data['unVerified'] = $this->report_model->get_unVerified();

        $data['title'] = 'Laporan Skripsi lolos Verifikasi';
        $this->loadView('unVerified', $data);
    }

    public function tidak_lolos_verifikasi_filter()
    {
        $data['kelas'] = $this->input->post('kelas');
        $data['tahun_masuk'] = $this->input->post('tahun_masuk');
        $data['prodi'] = $this->input->post('prodi');

        $data['unVerified'] = $this->report_model->get_unVerified_filter();

        $data['title'] = 'Laporan Skripsi lolos Verifikasi';
        $this->loadView('unVerifiedFilter', $data);
    }

    public function tidak_lolos_verifikasi_pdf($filter = null)
    {
        if ($filter != null) {
            $unVerified = $this->report_model->get_unVerified_filter();
        } else {
            $unVerified = $this->report_model->get_unVerified();
        }

        $tanggal = date('d-m-Y');

        $pdf = new TCPDF('P', 'mm', 'A4', true, 'UTF-8', false);

        $pdf->SetFont('times', '', 10);

        $pdf->setHeaderData('', 0, '', '', array(0, 0, 0), array(255, 255, 255));

        $pdf->SetPrintHeader(false);
        $pdf->SetPrintFooter(false);

        $pdf->AddPage();

        // writeHTML($html, $ln=true, $fill=false, $reseth=false, $cell=false, $align='')
        // writeHTMLCell($w, $h, $x, $y, $html='', $border=0, $ln=0, $fill=0, $reseth=true, $align='', $autopadding=true)

        $html = '
            <h1>Laporan Skripsi Tidak Lolos Verifikasi per tanggal ' . $tanggal . '</h1>
            <table border="1" cellspacing="0" cellpadding="3">
                <thead>
                    <tr style="text-align: center; font-weight: bold;">
                        <th width="30">#</th>
                        <th>NPM</th>
                        <th>Nama Mahasiswa</th>
                        <th>Kelas</th>
                        <th>Semester</th>
                        <th>Tahun Masuk</th>
                        <th>Prodi</th>
                        <th width="114.6">Judul</th>
                    </tr>
                </thead>
                <tbody>';
        $i = 1;
        foreach ($unVerified as $data) :
            $html .= '
                    <tr>
                        <th width="30" style="text-align: center; font-weight: bold;">' . $i++ . '</th>
                        <td style="text-align: center;">' . $data['npm'] . '</td>
                        <td>' . $data['nama_mahasiswa'] . '</td>
                        <td style="text-align: center;">' . $data['kelas'] . '</td>
                        <td style="text-align: center;">' . $data['semester'] . '</td>
                        <td style="text-align: center;">' . $data['tahun_masuk'] . '</td>
                        <td>' . $data['prodi'] . '</td>
                        <td width="114.6">' . $data['judul'] . '</td>
                    </tr>';
        endforeach;
        $html .= '
                </tbody>
            </table>';

        $pdf->writeHTML($html, true, false, true, false, '');

        $pdf->lastPage();

        $pdf->Output("tidak_lolos_verifikasi - $tanggal.pdf", 'I');
    }

    public function tidak_lolos_verifikasi_excel($filter = null)
    {
        if ($filter != null) {
            $unVerified = $this->report_model->get_unVerified_filter();
        } else {
            $unVerified = $this->report_model->get_unVerified();
        }

        $tanggal = date('d-m-Y');

        $spreadsheet = new Spreadsheet();

        // Add some data
        $spreadsheet->setActiveSheetIndex(0)
            ->setCellValue('A1', '#')
            ->setCellValue('B1', 'NPM')
            ->setCellValue('C1', 'Nama Mahasiswa')
            ->setCellValue('D1', 'Kelas')
            ->setCellValue('E1', 'Semester')
            ->setCellValue('F1', 'Tahun Masuk')
            ->setCellValue('G1', 'Prodi')
            ->setCellValue('H1', 'Judul');

        // Miscellaneous glyphs, UTF-8
        $i = 2;
        $no = 1;
        foreach ($unVerified as $data) {
            $spreadsheet->setActiveSheetIndex(0)
                ->setCellValue('A' . $i, $no)
                ->setCellValue('B' . $i, $data['npm'])
                ->setCellValue('C' . $i, $data['nama_mahasiswa'])
                ->setCellValue('D' . $i, $data['kelas'])
                ->setCellValue('E' . $i, $data['semester'])
                ->setCellValue('F' . $i, $data['tahun_masuk'])
                ->setCellValue('G' . $i, $data['prodi'])
                ->setCellValue('H' . $i, $data['judul']);
            $spreadsheet->getActiveSheet()->getStyle("A1:H1")->getFont()->setBold(true);
            $i++;
            $no++;
        }

        // Rename worksheet
        $spreadsheet->getActiveSheet()->setTitle('tidak_lolos_verifikasi');

        // Styling column
        foreach (range('A', 'H') as $column) {
            $spreadsheet->getActiveSheet()->getColumnDimension($column)->setAutoSize(true);
        }

        // Set active sheet index to the first sheet, so Excel opens this as the first sheet
        $spreadsheet->setActiveSheetIndex(0);

        // Redirect output to a client’s web browser (Xlsx)
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename="tidak_lolos_verifikasi - ' . $tanggal . '.xlsx"');
        header('Cache-Control: max-age=0');
        // If you're serving to IE 9, then the following may be needed
        header('Cache-Control: max-age=1');

        // If you're serving to IE over SSL, then the following may be needed
        header('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); // Date in the past
        header('Last-Modified: ' . gmdate('D, d M Y H:i:s') . ' GMT'); // always modified
        header('Cache-Control: cache, must-revalidate'); // HTTP/1.1
        header('Pragma: public'); // HTTP/1.0

        $writer = IOFactory::createWriter($spreadsheet, 'Xlsx');
        $writer->save('php://output');
        exit;
    }

    public function lolos_uji()
    {
        $data['tested'] = $this->report_model->get_tested();

        $data['title'] = 'Laporan Skripsi lolos Uji';
        $this->loadView('tested', $data);
    }

    public function lolos_uji_filter()
    {
        $data['kelas'] = $this->input->post('kelas');
        $data['tahun_masuk'] = $this->input->post('tahun_masuk');
        $data['prodi'] = $this->input->post('prodi');

        $data['tested'] = $this->report_model->get_tested_filter();

        $data['title'] = 'Laporan Skripsi lolos Uji';
        $this->loadView('testedFilter', $data);
    }

    public function lolos_uji_pdf($filter = null)
    {
        if ($filter != null) {
            $tested = $this->report_model->get_tested_filter();
        } else {
            $tested = $this->report_model->get_tested();
        }

        $tanggal = date('d-m-Y');

        $pdf = new TCPDF('P', 'mm', 'A4', true, 'UTF-8', false);

        $pdf->SetFont('times', '', 10);

        $pdf->setHeaderData('', 0, '', '', array(0, 0, 0), array(255, 255, 255));

        $pdf->SetPrintHeader(false);
        $pdf->SetPrintFooter(false);

        $pdf->AddPage();

        // writeHTML($html, $ln=true, $fill=false, $reseth=false, $cell=false, $align='')
        // writeHTMLCell($w, $h, $x, $y, $html='', $border=0, $ln=0, $fill=0, $reseth=true, $align='', $autopadding=true)

        $html = '
            <h1>Laporan Skripsi Lolos Uji per tanggal ' . $tanggal . '</h1>
            <table border="1" cellspacing="0" cellpadding="3">
                <thead>
                    <tr style="text-align: center; font-weight: bold;">
                        <th width="30">#</th>
                        <th>NPM</th>
                        <th>Nama Mahasiswa</th>
                        <th>Kelas</th>
                        <th>Semester</th>
                        <th>Tahun Masuk</th>
                        <th>Prodi</th>
                        <th>Judul</th>
                        <th>Hasil Ujian</th>
                        <th>Penguji 1</th>
                        <th>Penguji 2</th>
                        <th>Catatan Penguji 1</th>
                        <th>Catatan Penguji 2</th>
                    </tr>
                </thead>
                <tbody>';
        $i = 1;
        foreach ($tested as $data) :
            $html .= '
                    <tr>
                        <th width="30" style="text-align: center; font-weight: bold;">' . $i++ . '</th>
                        <td style="text-align: center;">' . $data['npm'] . '</td>
                        <td>' . $data['nama_mahasiswa'] . '</td>
                        <td style="text-align: center;">' . $data['kelas'] . '</td>
                        <td style="text-align: center;">' . $data['semester'] . '</td>
                        <td style="text-align: center;">' . $data['tahun_masuk'] . '</td>
                        <td>' . $data['prodi'] . '</td>
                        <td>' . $data['judul'] . '</td>
                        <td>' . $data['hasil_ujian'] . '</td>
                        <td>' . $data['penguji_1'] . '</td>
                        <td>' . $data['penguji_2'] . '</td>
                        <td>' . $data['catatan_penguji_1'] . '</td>
                        <td>' . $data['catatan_penguji_2'] . '</td>
                    </tr>';
        endforeach;
        $html .= '
                </tbody>
            </table>';

        $pdf->writeHTML($html, true, false, true, false, '');

        $pdf->lastPage();

        $pdf->Output("lolos_uji - $tanggal.pdf", 'I');
    }

    public function lolos_uji_excel($filter = null)
    {
        if ($filter != null) {
            $tested = $this->report_model->get_tested_filter();
        } else {
            $tested = $this->report_model->get_tested();
        }

        $tanggal = date('d-m-Y');

        $spreadsheet = new Spreadsheet();

        // Add some data
        $spreadsheet->setActiveSheetIndex(0)
            ->setCellValue('A1', '#')
            ->setCellValue('B1', 'NPM')
            ->setCellValue('C1', 'Nama Mahasiswa')
            ->setCellValue('D1', 'Kelas')
            ->setCellValue('E1', 'Semester')
            ->setCellValue('F1', 'Tahun Masuk')
            ->setCellValue('G1', 'Prodi')
            ->setCellValue('H1', 'Judul')
            ->setCellValue('I1', 'Hasil Ujian')
            ->setCellValue('J1', 'Penguji 1')
            ->setCellValue('K1', 'Penguji 2')
            ->setCellValue('L1', 'Catatan Penguji 1')
            ->setCellValue('M1', 'Catatan Penguji 2');

        // Miscellaneous glyphs, UTF-8
        $i = 2;
        $no = 1;
        foreach ($tested as $data) {
            $spreadsheet->setActiveSheetIndex(0)
                ->setCellValue('A' . $i, $no)
                ->setCellValue('B' . $i, $data['npm'])
                ->setCellValue('C' . $i, $data['nama_mahasiswa'])
                ->setCellValue('D' . $i, $data['kelas'])
                ->setCellValue('E' . $i, $data['semester'])
                ->setCellValue('F' . $i, $data['tahun_masuk'])
                ->setCellValue('G' . $i, $data['prodi'])
                ->setCellValue('H' . $i, $data['judul'])
                ->setCellValue('I' . $i, $data['hasil_ujian'])
                ->setCellValue('J' . $i, $data['penguji_1'])
                ->setCellValue('K' . $i, $data['penguji_2'])
                ->setCellValue('L' . $i, $data['catatan_penguji_1'])
                ->setCellValue('M' . $i, $data['catatan_penguji_1']);
            $spreadsheet->getActiveSheet()->getStyle("A1:M1")->getFont()->setBold(true);
            $i++;
            $no++;
        }

        // Rename worksheet
        $spreadsheet->getActiveSheet()->setTitle('lolos_uji');

        // Styling column
        foreach (range('A', 'M') as $column) {
            $spreadsheet->getActiveSheet()->getColumnDimension($column)->setAutoSize(true);
        }

        // Set active sheet index to the first sheet, so Excel opens this as the first sheet
        $spreadsheet->setActiveSheetIndex(0);

        // Redirect output to a client’s web browser (Xlsx)
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename="lolos_uji - ' . $tanggal . '.xlsx"');
        header('Cache-Control: max-age=0');
        // If you're serving to IE 9, then the following may be needed
        header('Cache-Control: max-age=1');

        // If you're serving to IE over SSL, then the following may be needed
        header('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); // Date in the past
        header('Last-Modified: ' . gmdate('D, d M Y H:i:s') . ' GMT'); // always modified
        header('Cache-Control: cache, must-revalidate'); // HTTP/1.1
        header('Pragma: public'); // HTTP/1.0

        $writer = IOFactory::createWriter($spreadsheet, 'Xlsx');
        $writer->save('php://output');
        exit;
    }

    public function tidak_lolos_uji()
    {
        $data['unTested'] = $this->report_model->get_unTested();

        $data['title'] = 'Laporan Skripsi Tidak lolos Uji';
        $this->loadView('unTested', $data);
    }

    public function tidak_lolos_uji_filter()
    {
        $data['kelas'] = $this->input->post('kelas');
        $data['tahun_masuk'] = $this->input->post('tahun_masuk');
        $data['prodi'] = $this->input->post('prodi');

        $data['unTested'] = $this->report_model->get_unTested_filter();

        $data['title'] = 'Laporan Skripsi Tidak lolos Uji';
        $this->loadView('unTestedFilter', $data);
    }

    public function tidak_lolos_uji_pdf($filter = null)
    {
        if ($filter != null) {
            $unTested = $this->report_model->get_unTested_filter();
        } else {
            $unTested = $this->report_model->get_unTested();
        }

        $tanggal = date('d-m-Y');

        $pdf = new TCPDF('P', 'mm', 'A4', true, 'UTF-8', false);

        $pdf->SetFont('times', '', 10);

        $pdf->setHeaderData('', 0, '', '', array(0, 0, 0), array(255, 255, 255));

        $pdf->SetPrintHeader(false);
        $pdf->SetPrintFooter(false);

        $pdf->AddPage();

        // writeHTML($html, $ln=true, $fill=false, $reseth=false, $cell=false, $align='')
        // writeHTMLCell($w, $h, $x, $y, $html='', $border=0, $ln=0, $fill=0, $reseth=true, $align='', $autopadding=true)

        $html = '
            <h1>Laporan Skripsi Tidak Lolos Uji per tanggal ' . $tanggal . '</h1>
            <table border="1" cellspacing="0" cellpadding="3">
                <thead>
                    <tr style="text-align: center; font-weight: bold;">
                        <th width="30">#</th>
                        <th>NPM</th>
                        <th>Nama Mahasiswa</th>
                        <th>Kelas</th>
                        <th>Semester</th>
                        <th>Tahun Masuk</th>
                        <th>Prodi</th>
                        <th>Judul</th>
                        <th>Hasil Ujian</th>
                        <th>Penguji 1</th>
                        <th>Penguji 2</th>
                        <th>Catatan Penguji 1</th>
                        <th>Catatan Penguji 2</th>
                    </tr>
                </thead>
                <tbody>';
        $i = 1;
        foreach ($unTested as $data) :
            $html .= '
                    <tr>
                        <th width="30" style="text-align: center; font-weight: bold;">' . $i++ . '</th>
                        <td style="text-align: center;">' . $data['npm'] . '</td>
                        <td>' . $data['nama_mahasiswa'] . '</td>
                        <td style="text-align: center;">' . $data['kelas'] . '</td>
                        <td style="text-align: center;">' . $data['semester'] . '</td>
                        <td style="text-align: center;">' . $data['tahun_masuk'] . '</td>
                        <td>' . $data['prodi'] . '</td>
                        <td>' . $data['judul'] . '</td>
                        <td>' . $data['hasil_ujian'] . '</td>
                        <td>' . $data['penguji_1'] . '</td>
                        <td>' . $data['penguji_2'] . '</td>
                        <td>' . $data['catatan_penguji_1'] . '</td>
                        <td>' . $data['catatan_penguji_2'] . '</td>
                    </tr>';
        endforeach;
        $html .= '
                </tbody>
            </table>';

        $pdf->writeHTML($html, true, false, true, false, '');

        $pdf->lastPage();

        $pdf->Output("tidak_lolos_uji - $tanggal.pdf", 'I');
    }

    public function tidak_lolos_uji_excel($filter = null)
    {
        if ($filter != null) {
            $unTested = $this->report_model->get_unTested_filter();
        } else {
            $unTested = $this->report_model->get_unTested();
        }

        $tanggal = date('d-m-Y');

        $spreadsheet = new Spreadsheet();

        // Add some data
        $spreadsheet->setActiveSheetIndex(0)
            ->setCellValue('A1', '#')
            ->setCellValue('B1', 'NPM')
            ->setCellValue('C1', 'Nama Mahasiswa')
            ->setCellValue('D1', 'Kelas')
            ->setCellValue('E1', 'Semester')
            ->setCellValue('F1', 'Tahun Masuk')
            ->setCellValue('G1', 'Prodi')
            ->setCellValue('H1', 'Judul')
            ->setCellValue('I1', 'Hasil Ujian')
            ->setCellValue('J1', 'Penguji 1')
            ->setCellValue('K1', 'Penguji 2')
            ->setCellValue('L1', 'Catatan Penguji 1')
            ->setCellValue('M1', 'Catatan Penguji 2');

        // Miscellaneous glyphs, UTF-8
        $i = 2;
        $no = 1;
        foreach ($unTested as $data) {
            $spreadsheet->setActiveSheetIndex(0)
                ->setCellValue('A' . $i, $no)
                ->setCellValue('B' . $i, $data['npm'])
                ->setCellValue('C' . $i, $data['nama_mahasiswa'])
                ->setCellValue('D' . $i, $data['kelas'])
                ->setCellValue('E' . $i, $data['semester'])
                ->setCellValue('F' . $i, $data['tahun_masuk'])
                ->setCellValue('G' . $i, $data['prodi'])
                ->setCellValue('H' . $i, $data['judul'])
                ->setCellValue('I' . $i, $data['hasil_ujian'])
                ->setCellValue('J' . $i, $data['penguji_1'])
                ->setCellValue('K' . $i, $data['penguji_2'])
                ->setCellValue('L' . $i, $data['catatan_penguji_1'])
                ->setCellValue('M' . $i, $data['catatan_penguji_1']);
            $spreadsheet->getActiveSheet()->getStyle("A1:M1")->getFont()->setBold(true);
            $i++;
            $no++;
        }

        // Rename worksheet
        $spreadsheet->getActiveSheet()->setTitle('tidak_lolos_uji');

        // Styling column
        foreach (range('A', 'M') as $column) {
            $spreadsheet->getActiveSheet()->getColumnDimension($column)->setAutoSize(true);
        }

        // Set active sheet index to the first sheet, so Excel opens this as the first sheet
        $spreadsheet->setActiveSheetIndex(0);

        // Redirect output to a client’s web browser (Xlsx)
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename="tidak_lolos_uji - ' . $tanggal . '.xlsx"');
        header('Cache-Control: max-age=0');
        // If you're serving to IE 9, then the following may be needed
        header('Cache-Control: max-age=1');

        // If you're serving to IE over SSL, then the following may be needed
        header('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); // Date in the past
        header('Last-Modified: ' . gmdate('D, d M Y H:i:s') . ' GMT'); // always modified
        header('Cache-Control: cache, must-revalidate'); // HTTP/1.1
        header('Pragma: public'); // HTTP/1.0

        $writer = IOFactory::createWriter($spreadsheet, 'Xlsx');
        $writer->save('php://output');
        exit;
    }

    public function mahasiswa()
    {
        $data['mahasiswa'] = $this->report_model->get_mahasiswa();

        $data['title'] = 'Laporan Data Mahasiswa';
        $this->loadView('mahasiswa', $data);
    }

    public function mahasiswa_filter()
    {
        $data['kelas'] = $this->input->post('kelas');
        $data['tahun_masuk'] = $this->input->post('tahun_masuk');
        $data['prodi'] = $this->input->post('prodi');

        $data['mahasiswa'] = $this->report_model->get_mahasiswa_filter();

        $data['title'] = 'Laporan Data Mahasiswa';
        $this->loadView('mahasiswaFilter', $data);
    }

    public function mahasiswa_pdf($filter = null)
    {
        if ($filter != null) {
            $mahasiswa = $this->report_model->get_mahasiswa_filter();
        } else {
            $mahasiswa = $this->report_model->get_mahasiswa();
        }

        $tanggal = date('d-m-Y');

        $pdf = new TCPDF('P', 'mm', 'A4', true, 'UTF-8', false);

        $pdf->SetFont('times', '', 10);

        $pdf->setHeaderData('', 0, '', '', array(0, 0, 0), array(255, 255, 255));

        $pdf->SetPrintHeader(false);
        $pdf->SetPrintFooter(false);

        $pdf->AddPage();

        // writeHTML($html, $ln=true, $fill=false, $reseth=false, $cell=false, $align='')
        // writeHTMLCell($w, $h, $x, $y, $html='', $border=0, $ln=0, $fill=0, $reseth=true, $align='', $autopadding=true)

        $html = '
            <h1>Laporan Data Mahasiswa per tanggal ' . $tanggal . '</h1>
            <table border="1" cellspacing="0" cellpadding="3">
                <thead>
                    <tr style="text-align: center; font-weight: bold;">
                        <th width="30">#</th>
                        <th>NPM</th>
                        <th>Nama Mahasiswa</th>
                        <th>Kelas</th>
                        <th>Semester</th>
                        <th>Tahun Masuk</th>
                        <th>Prodi</th>
                        <th>Konsentrasi</th>
                        <th>Jumlah Judul</th>
                    </tr>
                </thead>
                <tbody>';
        $i = 1;
        foreach ($mahasiswa as $data) :
            $html .= '
                    <tr>
                        <th width="30" style="text-align: center; font-weight: bold;">' . $i++ . '</th>
                        <td style="text-align: center;">' . $data['npm'] . '</td>
                        <td>' . $data['nama_mahasiswa'] . '</td>
                        <td style="text-align: center;">' . $data['kelas'] . '</td>
                        <td style="text-align: center;">' . $data['semester'] . '</td>
                        <td style="text-align: center;">' . $data['tahun_masuk'] . '</td>
                        <td>' . $data['konsentrasi'] . '</td>
                        <td>' . $data['prodi'] . '</td>
                        <td style="text-align: center;">' . $data['jumlah_judul'] . '</td>
                    </tr>';
        endforeach;
        $html .= '
                </tbody>
            </table>';

        $pdf->writeHTML($html, true, false, true, false, '');

        $pdf->lastPage();

        $pdf->Output("mahasiswa - $tanggal.pdf", 'I');
    }

    public function mahasiswa_excel($filter = null)
    {
        if ($filter != null) {
            $mahasiswa = $this->report_model->get_mahasiswa_filter();
        } else {
            $mahasiswa = $this->report_model->get_mahasiswa();
        }

        $tanggal = date('d-m-Y');

        $spreadsheet = new Spreadsheet();

        // Add some data
        $spreadsheet->setActiveSheetIndex(0)
            ->setCellValue('A1', '#')
            ->setCellValue('B1', 'NPM')
            ->setCellValue('C1', 'Nama Mahasiswa')
            ->setCellValue('D1', 'Kelas')
            ->setCellValue('E1', 'Semester')
            ->setCellValue('F1', 'Tahun Masuk')
            ->setCellValue('G1', 'Prodi')
            ->setCellValue('H1', 'Konsentrasi')
            ->setCellValue('I1', 'Jumlah Judul');

        // Miscellaneous glyphs, UTF-8
        $i = 2;
        $no = 1;
        foreach ($mahasiswa as $data) {
            $spreadsheet->setActiveSheetIndex(0)
                ->setCellValue('A' . $i, $no)
                ->setCellValue('B' . $i, $data['npm'])
                ->setCellValue('C' . $i, $data['nama_mahasiswa'])
                ->setCellValue('D' . $i, $data['kelas'])
                ->setCellValue('E' . $i, $data['semester'])
                ->setCellValue('F' . $i, $data['tahun_masuk'])
                ->setCellValue('G' . $i, $data['prodi'])
                ->setCellValue('H' . $i, $data['konsentrasi'])
                ->setCellValue('I' . $i, $data['jumlah_judul']);
            $spreadsheet->getActiveSheet()->getStyle("A1:I1")->getFont()->setBold(true);
            $i++;
            $no++;
        }

        // Rename worksheet
        $spreadsheet->getActiveSheet()->setTitle('mahasiswa');

        // Styling column
        foreach (range('A', 'I') as $column) {
            $spreadsheet->getActiveSheet()->getColumnDimension($column)->setAutoSize(true);
        }

        // Set active sheet index to the first sheet, so Excel opens this as the first sheet
        $spreadsheet->setActiveSheetIndex(0);

        // Redirect output to a client’s web browser (Xlsx)
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename="mahasiswa - ' . $tanggal . '.xlsx"');
        header('Cache-Control: max-age=0');
        // If you're serving to IE 9, then the following may be needed
        header('Cache-Control: max-age=1');

        // If you're serving to IE over SSL, then the following may be needed
        header('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); // Date in the past
        header('Last-Modified: ' . gmdate('D, d M Y H:i:s') . ' GMT'); // always modified
        header('Cache-Control: cache, must-revalidate'); // HTTP/1.1
        header('Pragma: public'); // HTTP/1.0

        $writer = IOFactory::createWriter($spreadsheet, 'Xlsx');
        $writer->save('php://output');
        exit;
    }

    public function Penguji()
    {
        $data['penguji'] = $this->report_model->get_Penguji();

        $data['title'] = 'Laporan Data Penguji';
        $this->loadView('Penguji', $data);
    }

    public function Penguji_filter()
    {
        $data['id_penguji'] = $this->input->post('penguji');
        $data['tahun'] = $this->input->post('tahun');
        $data['prodi'] = $this->input->post('prodi');

        $data['penguji'] = $this->report_model->get_Penguji_filter();

        $data['title'] = 'Laporan Data Penguji';
        $this->loadView('PengujiFilter', $data);
    }

    public function Penguji_pdf($filter = null)
    {
        if ($filter != null) {
            $Penguji = $this->report_model->get_Penguji_filter();
        } else {
            $Penguji = $this->report_model->get_Penguji();
        }

        $tanggal = date('d-m-Y');

        $pdf = new TCPDF('P', 'mm', 'A4', true, 'UTF-8', false);

        $pdf->SetFont('times', '', 10);

        $pdf->setHeaderData('', 0, '', '', array(0, 0, 0), array(255, 255, 255));

        $pdf->SetPrintHeader(false);
        $pdf->SetPrintFooter(false);

        $pdf->AddPage();

        // writeHTML($html, $ln=true, $fill=false, $reseth=false, $cell=false, $align='')
        // writeHTMLCell($w, $h, $x, $y, $html='', $border=0, $ln=0, $fill=0, $reseth=true, $align='', $autopadding=true)

        $html = '
            <h1>Laporan Data Penguji per tanggal ' . $tanggal . '</h1>
            <table border="1" cellspacing="0" cellpadding="3">
                <thead>
                    <tr style="text-align: center; font-weight: bold;">
                        <th width="30">#</th>
                        <th>NIK</th>
                        <th>Nama Penguji</th>
                        <th>Jenis Kelamin</th>
                        <th>Jafung</th>
                        <th>Jumlah Mahasiswa</th>
                        <th>Tahun</th>
                    </tr>
                </thead>
                <tbody>';
        $i = 1;
        foreach ($Penguji as $data) :
            $html .= '
                    <tr>
                        <th width="30" style="text-align: center; font-weight: bold;">' . $i++ . '</th>
                        <td style="text-align: center;">' . $data['nik'] . '</td>
                        <td>' . $data['nama_penguji'] . '</td>
                        <td style="text-align: center;">' . $data['jenis_kelamin'] . '</td>
                        <td style="text-align: center;">' . $data['jafung'] . '</td>
                        <td style="text-align: center;">' . $data['jumlah_mahasiswa'] . '</td>
                        <td style="text-align: center;">' . $data['tahun'] . '</td>
                    </tr>';
        endforeach;
        $html .= '
                </tbody>
            </table>';

        $pdf->writeHTML($html, true, false, true, false, '');

        $pdf->lastPage();

        $pdf->Output("Penguji - $tanggal.pdf", 'I');
    }

    public function Penguji_excel($filter = null)
    {
        if ($filter != null) {
            $Penguji = $this->report_model->get_Penguji_filter();
        } else {
            $Penguji = $this->report_model->get_Penguji();
        }

        $tanggal = date('d-m-Y');

        $spreadsheet = new Spreadsheet();

        // Add some data
        $spreadsheet->setActiveSheetIndex(0)
            ->setCellValue('A1', '#')
            ->setCellValue('B1', 'NIK')
            ->setCellValue('C1', 'Nama Penguji')
            ->setCellValue('D1', 'Jenis Kelamin')
            ->setCellValue('E1', 'Jafung')
            ->setCellValue('F1', 'Jumlah Mahasiswa')
            ->setCellValue('G1', 'Tahun');

        // Miscellaneous glyphs, UTF-8
        $i = 2;
        $no = 1;
        foreach ($Penguji as $data) {
            $spreadsheet->setActiveSheetIndex(0)
                ->setCellValue('A' . $i, $no)
                ->setCellValue('B' . $i, $data['nik'])
                ->setCellValue('C' . $i, $data['nama_Penguji'])
                ->setCellValue('D' . $i, $data['jenis_kelamin'])
                ->setCellValue('E' . $i, $data['Jafung'])
                ->setCellValue('F' . $i, $data['jumlah_mahasiswa'])
                ->setCellValue('G' . $i, $data['tahun']);
            $spreadsheet->getActiveSheet()->getStyle("A1:G1")->getFont()->setBold(true);
            $i++;
            $no++;
        }

        // Rename worksheet
        $spreadsheet->getActiveSheet()->setTitle('Penguji');

        // Styling column
        foreach (range('A', 'G') as $column) {
            $spreadsheet->getActiveSheet()->getColumnDimension($column)->setAutoSize(true);
        }

        // Set active sheet index to the first sheet, so Excel opens this as the first sheet
        $spreadsheet->setActiveSheetIndex(0);

        // Redirect output to a client’s web browser (Xlsx)
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename="Penguji - ' . $tanggal . '.xlsx"');
        header('Cache-Control: max-age=0');
        // If you're serving to IE 9, then the following may be needed
        header('Cache-Control: max-age=1');

        // If you're serving to IE over SSL, then the following may be needed
        header('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); // Date in the past
        header('Last-Modified: ' . gmdate('D, d M Y H:i:s') . ' GMT'); // always modified
        header('Cache-Control: cache, must-revalidate'); // HTTP/1.1
        header('Pragma: public'); // HTTP/1.0

        $writer = IOFactory::createWriter($spreadsheet, 'Xlsx');
        $writer->save('php://output');
        exit;
    }
}

/* End of file Report.php */
