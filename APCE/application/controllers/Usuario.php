<?php
defined('BASEPATH') OR exit('No direct script access allowed');

date_default_timezone_set('America/Lima');

class Usuario extends CI_Controller {

	function __construct(){

		parent::__construct();
		$this->load->model('usuario_model');

	}


	public function index(){

		$usuario_login = $this->session->userdata('sesion_usuario');
		if( !isset($usuario_login) ){
			redirect('/home');
		}else{
			redirect('/datos');
		}
	}

	public function iniciarSesion(){
		$usuario = $this->input->post('txtuser');
		$clave = $this->input->post('txtpassword');

		$res = $this->usuario_model->iniciarSesion($usuario, $clave);


		$session_data = array(
					'idusuario' => $res[0]->idusuario,
					'usuario' => $res[0]->usuario,
					'rol' => $res[0]->rol
				);

		$this->session->set_userdata('sesion_usuario', $session_data);

		if($res){
			echo json_encode( array('status' => 'success', 'msj' => 'Inicio de Sesion correcto' ) );
		} else{
			echo json_encode( array('status' => 'error', 'msj' => 'Error al iniciar sesion' ) );
		}
		
	}


	public function salir() {
		$this->session->unset_userdata('sesion_usuario');
		redirect(base_url().'home/index');
	}


}
