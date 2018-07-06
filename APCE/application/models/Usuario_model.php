<?php

class Usuario_model extends CI_Model {

	public function listarUsuarios(){

		$this->db->select('*');
		$this->db->from('user');
		$query = $this->db->get();

		return $query->result();
	}

	public function iniciarSesion($usuario, $clave){

		$this->db->where('usuario', $usuario);
		$this->db->where('password', $clave);

		$query = $this->db->get('user');

		if ($query->num_rows()>0){
			return $query->result();
		}else{
			return false;
		}

	}

}
