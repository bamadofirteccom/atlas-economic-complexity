<?php
defined('BASEPATH') OR exit('No direct script access allowed');

date_default_timezone_set('America/Lima');

class Home extends CI_Controller {

	function __construct(){

		parent::__construct();
		$this->load->model('usuario_model');

	}


	public function index(){
		$usuario_login = $this->session->userdata('sesion_usuario');
		if( !isset($usuario_login) ){
			$this->load->view('frontend/login');
		}else{
			$this->load->view('frontend/principal');
		}
	}

}
