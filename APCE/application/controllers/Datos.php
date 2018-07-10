<?php
defined('BASEPATH') OR exit('No direct script access allowed');

date_default_timezone_set('America/Lima');

class Datos extends CI_Controller {

	function __construct(){

		parent::__construct();

		$this->load->library('PHPExcel');
		$this->load->model('datos_model');

	}


	public function index(){

		$this->cargarArchivos();
	}

	public function cargarArchivos(){
		
		$usuario_login = $this->session->userdata('sesion_usuario');
		if( !isset($usuario_login) ){
			$this->load->view('frontend/login');
		}else{
			$this->load->view('backend/cargarArchivos', array('error' => ' ' ));
		}
		
	}

	public function getitem(){
		$res = $this->datos_model->getitem('1');
		var_dump($res);
	}

	public function do_upload(){
		$config = array(
		'upload_path' => "./uploads/",
		'allowed_types' => "gif|jpg|png|jpeg|pdf|xlsx|xls",
		'overwrite' => TRUE,
		'max_size' => "2048000", // Can be set to particular file size , here it is 2 MB(2048 Kb)
		'max_height' => "768",
		'max_width' => "1024"
		);

		$this->load->library('upload', $config);

		if($this->upload->do_upload()){

			$data = array('upload_data' => $this->upload->data());

			$tmpfname = "./uploads/".$data['upload_data']['orig_name'];
			$excelReader = PHPExcel_IOFactory::createReaderForFile($tmpfname);
			$excelObj = $excelReader->load($tmpfname);
			$worksheet = $excelObj->getSheet(0);
			$lastRow = $worksheet->getHighestRow();

			$highestColumn = $worksheet->getHighestColumn();

			$id = $this->datos_model->getLastId('1')->id + 1;

			for ($row = 2; $row <= $lastRow; $row++) {

				$anio = $worksheet->getCell('B'.$row)->getValue();
				$idprovincia = $worksheet->getCell('C'.$row)->getValue();
				$idproducto = $worksheet->getCell('E'.$row)->getValue();
				$idpais = $worksheet->getCell('G'.$row)->getValue();
				$exportacion = $worksheet->getCell('I'.$row)->getValue();
				$importacion = $worksheet->getCell('J'.$row)->getValue();

				$data_insert = array(
					'id' => $id,
				    'year' => $anio,
				    'level' => '4digit',
				    'export_value' => $exportacion,
				    'import_value' => $importacion,
				    'product_id' => $idproducto,
				    'location_id' => $idprovincia,
				    'country_id' => $idpais
				);

				$res = $this->datos_model->insertProvincia_Producto_Pais_Anio($data_insert);
				echo $res;
				$id++;

			}


		}else{
			$error = array('error' => $this->upload->display_errors());
			$this->load->view('backend/cargarArchivos', $error);
		}
	}




}
