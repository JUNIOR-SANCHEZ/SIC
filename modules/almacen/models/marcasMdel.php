<?php
class marcasModel extends Model {
    public function __construct()
    {
        parent::__construct();
    }
    public function consulta()
    {
      try{
        $sql = "CALL consulta_marcas_proc();";
        $stmt=$this->_db->query($sql)->fetchall(PDO::FETCH_ASSOC);
        return $stmt;
      }catch(PDOException $e){
      echo "Error en la consulta".$e->getMessage();
      return null;
      }
    }
    public function insertar($datos)
    {
      try {
        $stmt=$this->_db->prepare('CALL insertar_marcas_proc(:desc);');
        $result=$stmt->execute(array(
          ":desc"=>$datos[0]
        ));
        return $result;
      } catch (PDOException $e) {
        echo "Error de la insercion".$e->getMessage();
        return 0;
      }
    }
    public function eliminar($id)
    {
      try {
        $stmt=$this->_db->prepare('call eliminar_marcas_proc(:id);');
        $result=$stmt->execute(array(":id"=>$id));
        return $result;
      } catch (PDOException $e) {
         echo "Error de la eliminacion".$e->getMessage();
        return 0;
      }
    }
    public function modificar($datos)
    {
      try {
        $stmt=$this->_db->prepare('CALL modificar_marcas_proc(:id,:desc);');
          $result=$stmt->execute(array(
          ":id"=>$datos[0],
          ":desc"=>$datos[1]
        ));
      } catch (PDOException $e) {
         echo "Error de la modificacion".$e->getMessage();
        return 0;
      }
    }
    public function autocomplete($dato)
    {
        try {
            $array = array();
            $sql = "CALL descripcion_consulta_marcas_proc(:data);";
            $stmt = $this->_db->prepare($sql);
            $stmt->execute(array(":data"=>$dato));
            $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
            foreach ($result as $row){
                $array[]=$row["description"];
            }
            return $array;
        } catch (PDOException $e) {
            echo "Error en la consulta " . $e->getMessage();
            return null;
        }
    }

    public function consulta_fila($dato)
    {
        try {
            $array = array();
            $sql = "CALL descripcion_consulta_marcas_x_contenido_proc(:data);";
            $stmt = $this->_db->prepare($sql);
            $stmt->execute(array(":data"=>$dato));
            $result = $stmt->fetch(PDO::FETCH_ASSOC);
            return $result;
        } catch (PDOException $e) {
            echo "Error en la consulta " . $e->getMessage();
            return null;
        }
    }
}