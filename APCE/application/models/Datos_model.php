<?php

class Datos_model extends CI_Model {


	public function insertProvincia_Producto_Pais_Anio($data_insert){

		$this->db->insert_batch('country_msa_product_year', $data_insert);

		if($this->db->affected_rows() > 0){
			return true;
		}else{
			return false;
		}


	}


	public function getitem($id){
		$this->db->where('id',$id);
		$res = $this->db->get('country_msa_product_year');
		return $res->result();
	}


	public function getLastId($plantilla){

		switch ($plantilla) {
			case '1':
				$tabla = 'country_msa_product_year';
			break;
		}

		$id = $this->db->select('id')->order_by('id',"desc")->limit(1)->get($tabla)->row();

		if($id==null){
			return 0;	
		}else{
			return $id->id;
		}

		
	}

}
