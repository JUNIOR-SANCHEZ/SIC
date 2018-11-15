<?php
class clientesModel extends Model
{
    public function __construct()
    {
        parent::__construct();
    }
    //FIXME: VERIFICAR USABILIDAD
    public function consultas()
    {
        try {
            $sql = "CALL clientes_proc('consultas',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);";
            $stmt = $this->_db->query($sql)->fetchAll(PDO::FETCH_ASSOC);
            return $stmt;
        } catch (PDOException $e) {
            return $e->getMessage();
        }
    }
    //FIXME: VERIFICAR USABILIDAD
    public function consulta_id($id)
    {
        try {
            $sql = "CALL clientes_proc('consulta',:id,NULL,NULL,NULL,NULL,NULL,NULL,NULL);";
            $stmt = $this->_db->prepare($sql);
            $stmt->execute(array(":id" => $id));
            $result = $stmt->fetch(PDO::FETCH_ASSOC);
            return $result;
        } catch (PDOException $e) {
            return $e->getMessage();
        }
    }
    //FIXME: VERIFICAR USABILIDAD
    public function insertar(array $dato)
    {
        try {
            $sql = "CALL clientes_proc('insertar',NULL,:name,:lastname,:card,:address,:phone,:mobile,:email);";
            $stmt = $this->_db->prepare($sql);
            $result = $stmt->execute(array(
                ":name"=>$dato[0],
                ":lastname"=>$dato[1],
                ":card"=>$dato[2],
                ":address"=>$dato[3],
                ":phone"=>$dato[4],
                ":mobile"=>$dato[5],
                ":email"=>$dato[6],
            ));
            return $result;
        } catch (PDOException $e) {
            return $e->getMessage();
        }
    }
    //FIXME: VERIFICAR USABILIDAD
    public function estado(array $dato)
    {
        try {
            $sql = "";
            $stmt = $this->_db->prepare($sql);
            $result = $stmt->execute(array(":id" => $id));
            return $result;
        } catch (PDOException $e) {
            return $e->getMessage();
        }
    }
    //FIXME: VERIFICAR USABILIDAD
    public function modificar(array $dato)
    {
        try {
            $sql = "CALL clientes_proc('modificar',:id,:name,:lastname,:card,:address,:phone,:mobile,:email);";
            $stmt = $this->_db->prepare($sql);
            $result = $stmt->execute(array(
                ":name" => $dato[0],
                ":lastname" => $dato[1],
                ":card" => $dato[2],
                ":address" => $dato[3],
                ":phone" => $dato[4],
                ":mobile" => $dato[5],
                ":email" => $dato[6],
                ":id" => $dato[7],
            ));
            return $result;
        } catch (PDOException $e) {
            return $e->getMessage();
        }
    }
}
