<?php
class proveedoresModel extends Model
{

    
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * TODO: Consulta proveedor
     * 
     */
    public function consulta()
    {
        try {
            $sql = "CALL proveedores_proc('consulta_simple',null,null,null,null,null,null,null,null,null,null);";
            $stmt = $this->_db->query($sql)->fetchAll(PDO::FETCH_ASSOC);
            return $stmt;
        } catch (PDOException $e) {
            echo "Error en la consulta " . $e->getMessage();
            return null;
        }
    }

    public function consulta_id($id)
    {
        try {
            $sql = "CALL proveedores_proc('consulta_id',:id,null,null,null,null,null,null,null,null,null);";
            $stmt = $this->_db->prepare($sql);
            $stmt->execute(array(":id"=>$id));
            $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $result;
        } catch (PDOException $e) {
            echo "Error en la consulta " . $e->getMessage();
            return null;
        }
    }

    public function contribuyente_lista()
    {
        try {
            $sql = "CALL tipo_contribuyente_proc('consulta',null,null,null);";
            $stmt = $this->_db->query($sql);
            $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $result;
        } catch (PDOException $e) {
            echo "Error en la consulta " . $e->getMessage();
            return null;
        }
    }
    public function autocomplete($dato)
    {
        try {
            $array = array();
            $sql = "CALL tipo_contribuyente_consulta_proc(:data);";
            $stmt = $this->_db->prepare($sql);
            $stmt->execute(array(":data" => $dato));
            $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
            foreach ($result as $row) {
                $array[] = $row["description"];
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
            $sql = "CALL tipo_contribuyente_consulta_x_contenido_proc(:data);";
            $stmt = $this->_db->prepare($sql);
            $stmt->execute(array(":data" => $dato));
            $result = $stmt->fetch(PDO::FETCH_ASSOC);
            return $result;
        } catch (PDOException $e) {
            echo "Error en la consulta " . $e->getMessage();
            return null;
        }
    }
    
    /**
     * TODO: alterar tablas proveedores
     * 
     */
    public function insertar(array $datos)
    {
        try {
            $stmt = $this->_db->prepare("CALL proveedores_proc('insertar',null,:ruc,:r_soc,:repre,:dir,:email,:telf,:cel,null,:t_cont);");
            $result = $stmt->execute(array(
                ":ruc" => $datos[0],
                ":r_soc" => $datos[1],
                ":repre" => $datos[2],
                ":dir" => $datos[3],
                ":email" => $datos[4],
                ":telf" => $datos[5],
                ":cel" => $datos[6],
                ":t_cont" => $datos[7],
            ));
            return $result;
        } catch (PDOException $e) {
            echo "Error en la insercción " . $e->getMessage();
            return 0;
        }

    }
    public function eliminar($id)
    {
        try {
            $stmt = $this->_db->prepare("CALL proveedores_proc('eliminar',:id,null,null,null,null,null,null,null,null,null);");
            $result = $stmt->execute(array(":id" => $id));
            return $result;
        } catch (PDOException $e) {
            echo "Error en la eliminación " . $e->getMessage();
            return 0;
        }
    }
    public function modificar($datos)
    {
        try {
            $stmt = $this->_db->prepare("CALL modificar_proveedores_proc(:id,:t_cont,:ruc,:r_soc,:repre,:dir,:email,:telf,:cel,:est);");
            $result = $stmt->execute(array(
                ":id" => $datos[0],
                ":t_cont" => $datos[1],
                ":ruc" => $datos[2],
                ":r_soc" => $datos[3],
                ":repre" => $datos[4],
                ":dir" => $datos[5],
                ":email" => $datos[6],
                ":telf" => $datos[7],
                ":cel" => $datos[8],
                ":est" => $datos[9],
            ));
            return $result;
        } catch (PDOException $e) {
            echo "Error en la insercción " . $e->getMessage();
            return 0;
        }
    }

    

    public function estado(array $datos)
    {
        try {
            $stmt = $this->_db->prepare("CALL proveedores_proc('estado',:id,null,null,null,null,null,null,null,:est,null);");
            $result = $stmt->execute(array(
                ":id" => $datos[0],
                ":est" => $datos[1],
            ));
            return $result;
        } catch (PDOException $e) {
            echo "Error en la insercción " . $e->getMessage();
            return 0;
        }
    }

}
