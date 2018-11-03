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
            $sql="CALL consulta_productos_proc();";
            $stmt = $this->_db->query($sql)->fetchAll(PDO::FETCH_ASSOC);
            return $stmt;
        } catch (PDOException $e) {
            echo "Error en la consulta ".$e->getMessage();
            return null;
        }

    }

    public function insertar($datos)
    {
        try{
            $stmt = $this->_db->prepare('CALL insertar_productos_proc(
                                                                        :id_cat,
                                                                        :id_pres,
                                                                        :id_marc,
                                                                        :d_prod,
                                                                        :min_prod,
                                                                        :max_prod,
                                                                        :stock);');
            $result = $stmt->execute(array(
                ":id_cat"=>$datos[0],
                ":id_pres"=>$datos[1],
                ":id_marc"=>$datos[2],
                ":d_prod"=>$datos[3],
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
            $stmt = $this->_db->prepare("CALL eliminar_proveedores_proc(:id)");
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
            $stmt = $this->_db->prepare("CALL 
                                             modificar_productos_proc(:id_prod,:id_cat,:id_pres,:id_marc,':d_prod',:min_prod,:max_prod,:stock);");
            $result = $stmt->execute(array(
                ":id_prod"=>$datos[0],
                ":id_cat"=>$datos[1],
                ":id_pres"=>$datos[2],
                ":id_marc"=>$datos[3],
                ":d_prod"=>$datos[4],
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
    public function autocomplete($dato)
    {
        try {
            $array = array();
            $sql = "CALL descripcion_consulta_productos_proc(:data);";
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
            $sql = "CALL descripcion_consulta_productos_x_contenido_proc(:data);";
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
