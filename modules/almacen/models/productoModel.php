<?php
class productoModel extends Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function consulta()
    {
        try {
            $sql="CALL productos_proc('consultas',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);";
            $stmt = $this->_db->query($sql)->fetchAll(PDO::FETCH_ASSOC);
            return $stmt;
        } catch (PDOException $e) {
            echo "Error en la consulta ".$e->getMessage();
            return null;
        }

    }
    public function consulta_id($id)
    {
        try {
            $sql = "CALL productos_proc('consulta_id',:id,NULL,NULL,NULL,NULL,NULL,NULL,NULL);";
            $stmt = $this->_db->prepare($sql);
            $stmt->execute(array(":id"=>$id));
            $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $result;
        } catch (PDOException $e) {
            echo "Error en la consulta " . $e->getMessage();
            return null;
        }
    }
    public function categorias_lista()
    {
        try {
            $sql = "CALL categorias_proc('consulta',NULL,NULL,NULL);";
            $stmt = $this->_db->query($sql);
            $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $result;
        } catch (PDOException $e) {
            echo "Error en la consulta " . $e->getMessage();
            return null;
        }
    }
    public function consulta_fila_categoria($dato)
    {
        try {
            $array = array();
            $sql = "CALL categorias_consulta_x_contenido_proc(:data);";
            $stmt = $this->_db->prepare($sql);
            $stmt->execute(array(":data" => $dato));
            $result = $stmt->fetch(PDO::FETCH_ASSOC);
            return $result;
        } catch (PDOException $e) {
            echo "Error en la consulta " . $e->getMessage();
            return null;
        }
    }
    public function presentacion_lista()
    {
        try {
            $sql = "CALL presentaciones_proc('consulta',NULL,NULL);";
            $stmt = $this->_db->query($sql);
            $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $result;
        } catch (PDOException $e) {
            echo "Error en la consulta " . $e->getMessage();
            return null;
        }
    }
    public function consulta_fila_presentacion($dato)
    {
        try {
            $array = array();
            $sql = "CALL presentaciones_consulta_x_contenido_proc(:data)";
            $stmt = $this->_db->prepare($sql);
            $stmt->execute(array(":data" => $dato));
            $result = $stmt->fetch(PDO::FETCH_ASSOC);
            return $result;
        } catch (PDOException $e) {
            echo "Error en la consulta " . $e->getMessage();
            return null;
        }
    }
    public function marcas_lista()
    {
        try {
            $sql = "CALL marcas_proc('consulta',NULL,NULL);";
            $stmt = $this->_db->query($sql);
            $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $result;
        } catch (PDOException $e) {
            echo "Error en la consulta " . $e->getMessage();
            return null;
        }
    }
    public function consulta_fila_marcas($dato)
    {
        try {
            $array = array();
            $sql = "CALL marcas_consulta_x_contenido_proc(:data);";
            $stmt = $this->_db->prepare($sql);
            $stmt->execute(array(":data" => $dato));
            $result = $stmt->fetch(PDO::FETCH_ASSOC);
            return $result;
        } catch (PDOException $e) {
            echo "Error en la consulta " . $e->getMessage();
            return null;
        }
    }
    public function insertar($datos)
    {
        try{
            $stmt = $this->_db->prepare("CALL productos_proc('insertar',null,:id_cat,
            :id_pres,:id_marc,:desc,:min_prod,:max_prod,:stock);");
            $result = $stmt->execute(array(
                ":id_cat"=>$datos[0],
                ":id_pres"=>$datos[1],
                ":id_marc"=>$datos[2],
                ":desc"=>$datos[3],
                ":min_prod"=>$datos[4],
                ":max_prod"=>$datos[5],
                ":stock"=>$datos[6]
            ));
            return $result;
        }catch(PDOException $e){
            echo "Error en la insercción ".$e->getMessage();
            return 0;
        }
    }
    public function eliminar($id)
    {
        try{
            $stmt = $this->_db->prepare("CALL productos_proc('eliminar',:id,NULL,NULL,NULL,NULL,NULL,NULL,NULL);");
            $result = $stmt->execute(array(":id"=>$id));
            return $result;
        }catch(PDOException $e){
            echo "Error en la eliminación ".$e->getMessage();
            return 0;
        }
    }
    public function modificar($datos)
    {
        try{
            $stmt = $this->_db->prepare("CALL productos_proc('modificar',
            :id_prod,:id_cat,:id_pres,:id_marca,
            :desc,:min_prod,:max_prod,:stock);");
            $result = $stmt->execute(array(
                ":id_prod"=>$datos[0],
                ":id_cat"=>$datos[1],
                ":id_pres"=>$datos[2],
                ":id_marc"=>$datos[3],
                ":desc"=>$datos[4],
                "min_prod"=>$datos[5],
                ":max_prod"=>$datos[6],
                ":stock"=>$datos[7]
            ));
            return $result;
        }catch(PDOException $e){
            echo "Error en la insercción ".$e->getMessage();
            return 0;
        }
    }
}
