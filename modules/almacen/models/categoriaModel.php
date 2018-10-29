<?php
class categoriaModel extends Model {
    public function __construct()
    {
        parent::__construct();
    }
    public function consulta()
    {
      try{
        $stmt=$this->_db->query("CALL consulta_categoria_proc();")->fetchall(PDO::FETCH_ASSOC);
        return $stmt;
      }catch(PDOException $e){
      echo "Error en la consulta".$e.->getMessage();
      return null;
      }
    }
    public function insertar($datos)
    {
      try {
        $stmt=$this->_db->prepare('CALL insertar_categorias_proc(":desc",1);');
        $result=$stmt->execute(array(
          ":desc"=>$datos[0];
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
        $stmt=$this->_db->prepare('call eliminar_categorias_proc(:id);');
        $result=$stmt->execute(array(
          ":id"=>$datos[0];
        ));
      } catch (Exception $e) {
         echo"Error de la eliminacion".$e->getMessage();
        return 0;
      }
    }
    public function modificar($datos)
    {
      try {
        $stmt=$this->_db->prepare('CALL modificar_categorias_proc(:id,":desc",:estado);');
          $result=$stmt->execute(array(
          ":id"=>$datos[0];
          ":desc"=>$datos[1];
          ":estado"=>$datos[2];
        ));
      } catch (Exception $e) {
         echo"Error de la modificacion".$e->getMessage();
        return 0;
      }
    }
}