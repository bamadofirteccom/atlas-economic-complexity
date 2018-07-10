<?php

class Datos_model extends CI_Model {


	public function insertProvincia_Producto_Pais_Anio($data_insert){

		$this->db->insert('country_msa_product_year', $data_insert);

		$insert_id = $this->db->insert_id();
		return $insert_id;
		/*
		if ($this->db->affected_rows() == '1') {
	        return TRUE;
	    }
	    return FALSE;*/
	}


	public function getitem($id){
		$this->db->where('id',$id);
		$res = $this->db->get('country_msa_product_year');
		return $res->result();
	}


	public function getLastId($i){
		$id = $this->db->select('id')->order_by('id',"desc")->limit(1)->get('country_msa_product_year')->row();
		return $id;
	}

}
