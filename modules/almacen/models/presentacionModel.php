<?php
class presentacionModel extends Model {
    public function __construct()
    {
        parent::__construct();
    }
     public function consulta()
    {
      try{
        $stmt=$this->_db->query("CALL presentaciones_proc('consulta_simple',NULL,NULL);")->fetchall(PDO::FETCH_ASSOC);
        return $stmt;
      }catch(PDOException $e){
      echo "Error en la consulta".$e->getMessage();
      return null;
      }
    }
    public function consulta_id($id)
    {
        try {
            $sql = "CALL presentaciones_proc('consulta_id',:id,NULL);";
            $stmt = $this->_db->prepare($sql);
            $stmt->execute(array(":id"=>$id));
            $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $result;
        } catch (PDOException $e) {
            echo "Error en la consulta " . $e->getMessage();
            return null;
        }
    }
    public function insertar($datos)
    {
      try {
        $stmt=$this->_db->prepare("CALL presentaciones_proc('insertar',NULL,:desc);");
        $result=$stmt->execute(array(
          ":desc"=>$datos[0]
        ));
        return $result;
      } catch (PDOException $e) {
        echo"Error de la insercion".$e->getMessage();
        return 0;
      }
    }
    public function eliminar($datos)
    {
      try {
        $stmt=$this->_db->prepare("CALL presentaciones_proc('eliminar',:id,NULL);");
        $result=$stmt->execute(array(":id"=>$id));
        return $result;
      } catch (Exception $e) {
         echo"Error de la eliminacion".$e->getMessage();
        return 0;
      }
    }
    public function modificar($datos)
    {
      try {
        $stmt=$this->_db->prepare("CALL presentaciones_proc('modificar',:id,:desc);");
          $result=$stmt->execute(array(
          ":id"=>$datos[0],
          ":desc"=>$datos[1]
        ));
      } catch (Exception $e) {
         echo"Error de la modificacion".$e->getMessage();
        return 0;
      }
    }
}