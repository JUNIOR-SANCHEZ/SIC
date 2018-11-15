<?php
class indexModel extends Model {
    public function __construct()
    {
        parent::__construct();
    }
    //FIXME: FUNCION SIN CODIFICAR
    public function consulta()
    {
        try{
            $sql ="";
            $stmt = $this->_db->query($sql)->fetchAll(PDO::FETCH_ASSOC);
            return $stmt;
        }catch(PDOException $e){
            return "Error en la consulta " . $e->getMessage();
        }
    }
    //FIXME: FUNCION SIN CODIFICAR
    public function consulta_id($id)
    {
        try {
            $sql = "";
            $stmt = $this->_db->prepare($sql);
            $stmt->execute(array(":id" => $id));
            $result = $stmt->fetch(PDO::FETCH_ASSOC);
            return $result;
        } catch (PDOException $e) {
            return null;
        }
    }
    //FIXME: FUNCION SIN CODIFICAR
    public function insertar(array $dato)
    {
        try {
            $sql = "";
            $stmt = $this->_db->prepare(sql);
            $result = $stmt->execute(array());
            return $result;
        } catch (PDOException $e) {
            return 0;
        }
    }
    //FIXME: FUNCION SIN CODIFICAR
    public function estado(array $dato)
    {
        try {
            $sql = "";
            $stmt = $this->_db->prepare($sql);
            $result = $stmt->execute(array(":id"=>$id));
            return $result;
        } catch (PDOException $e) {
            return 0;
        }
    }
    //FIXME: FUNCION SIN CODIFICAR
    public function modificar(array $dato)
    {
        try {
            $sql = "";
            $stmt = $this->_db->prepare($sql);
            $result = $stmt->execute(array());
            return $result;
        } catch (PDOException $e) {
                return 0;
        }
    }
}