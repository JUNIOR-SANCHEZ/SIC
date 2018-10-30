<?php
class proveedoresModel extends Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function consulta()
    {
        try {
            $sql = "CALL consulta_proveedores_proc();";
            $stmt = $this->_db->query($sql)->fetchAll(PDO::FETCH_ASSOC);
            return $stmt;
        } catch (PDOException $e) {
            echo "Error en la consulta " . $e->getMessage();
            return null;
        }
    }
    /**
     * Este metodo resivira un array con 8 datos en el sigiente orden:
     * 1- Se ingresa el tipo de persona ya sea está juridica o  regular
     * 2- EL numero de ruc de la empresa
     * 3- El nombre de la empresa que provee los productos
     * 4- El nombre del representante de la empresa
     * 5- Dirección donde se encuentra la empresa que provee los productos
     * 6- Correo de la empresa
     * 7- numero teléfonico de la empresa
     * 8- número de celular de la empresa
     */
    public function insertar($datos)
    {
        try {
            $stmt = $this->_db->prepare("CALL insertar_proveedores_proc(:t_cont,:ruc,:r_soc,:repre,:dir,:email,:telf,:cel);");
            $result = $stmt->execute(array(
                ":t_cont" => $datos[0],
                ":ruc" => $datos[1],
                ":r_soc" => $datos[2],
                ":repre" => $datos[3],
                ":dir" => $datos[4],
                ":email" => $datos[5],
                ":telf" => $datos[6],
                ":cel" => $datos[7],
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
            $stmt = $this->_db->prepare("CALL eliminar_proveedores_proc(:id)");
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

    public function tipo_cont($dato)
    {
        try {
            $array = array();
            $sql = "CALL tipo_contribuyente_consulta_proc(:data);";
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
}
