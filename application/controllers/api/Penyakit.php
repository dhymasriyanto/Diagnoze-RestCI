<?php
use Restserver\Libraries\REST_Controller;

defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Penyakit extends REST_Controller
{
    public function __construct()
    {
        parent::__construct();
        // $this->load->model('Penyakit_API_model','kelas');
    }

    
    public function multiexplode ($delimiters,$string) {

        $ready = str_replace($delimiters, $delimiters[0], $string);
        $launch = explode($delimiters[0], $ready);
        return  $launch;
    }

    public function penyakit_get()
    {
        // $gejala = $this->input->post();
        $gejala = $this->get('gejala');

        // echo $gejala;
        // var_dump($gejala);
        // die;

       // $query= "SELECT COUNT(id_gejala) as jumlah, id_penyakit FROM penyakit_detail WHERE id_gejala IN (".implode(",",$gejala).") AND id_gejala NOT IN (99) GROUP BY id_penyakit ORDER BY jumlah DESC LIMIT 1";

        $query= "SELECT COUNT(id_gejala) as jumlah, id_penyakit FROM penyakit_detail WHERE id_gejala IN ($gejala) AND id_gejala NOT IN (99) GROUP BY id_penyakit ORDER BY jumlah DESC LIMIT 1";

       $tmp = $this->db->query($query)->result_array();

       $penyakit = "SELECT * FROM penyakit WHERE id =".$tmp[0]['id_penyakit'];

       $data = $this->db->query($penyakit)->result_array();
       
       $this->response([
                'status' => true,
                'data' => $data,
            ],REST_Controller::HTTP_OK);
    }

    
    public function pertanyaan_get()
    {
       $idGejala = $this->get('idGejala');
       $query= "SELECT nama_gejala from gejala where id = $idGejala";


       $data = $this->db->query($query)->result_array();

       $this->response([
                'status' => true,
                'data' => $data,
            ],REST_Controller::HTTP_OK);
    }



}

?>