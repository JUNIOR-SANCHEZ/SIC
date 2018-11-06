<?php
class proveedoresController extends comprasController
{
    private $_sql;
    public function __construct()
    {
        parent::__construct();
        $this->_sql = $this->loadModel("proveedores");
        $this->_view->setJsPlugin(array("jquery.inputmask", "jqBootstrapValidation"));
    }
    public function index()
    {
        $this->_view->setJs(array("js"));
        $paginador = new Paginador();
        $this->_view->assign("title", "Proveedores");
        $this->_view->assign("tipo_cont",$this->_sql->contribuyente_lista());
        $this->_view->assign('consulta', $paginador->paginar($this->_sql->consulta(), false));
        $this->_view->assign('paginador', $paginador->getView('paginacion_ajax'));
        $this->_view->renderizar("index", "compras", "proveedores");
    }
    public function consulta_ajax()
    {
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            $pagina = $this->getInt('pagina');
            $paginador = new Paginador();
            $this->_view->assign('consulta', $paginador->paginar($this->_sql->consulta(), $pagina));
            $this->_view->assign('paginador', $paginador->getView('paginacion_ajax'));
            $this->_view->renderizar("viewAjax/index", false, false, true);
        } else {
            echo "Error Processing Request";
        }
    }

    public function consulta_id_ajax($id)
    {
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            $result = $this->_sql->consulta_id($id);
            echo json_encode($result);
            exit;
        } else {
            echo "Error Processing Request";
        }
    }
    public function insertar_ajax()
    {
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {

            if ($this->getInt("cb_contribuyente") == 0) {
                echo json_encode(array("error"=>"Debese leccionar un contribuyente existente"));
                exit;
            }
            $result = $this->_sql->insertar(
                array(
                    $this->getText("txtruc"),
                    $this->getText("txtempresa"),
                    $this->getText("txtrepresentante"),
                    $this->getText("txtdireccion"),
                    $this->getText("txtemail"),
                    $this->getText("txttelefono"),
                    $this->getText("txtcelular"),
                    $this->getInt("cb_contribuyente"),
                )
            );
            if (!$result) {
                echo json_encode(array("error"=>"Ha ocurrido un error inexperado"));
                exit;
            }
            echo json_encode("Se registro " . $result . " fila(s)");
            exit;
        } else {
            echo "Error Processing Request";
        }
    }
    public function autocomplete_ajax()
    {
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            echo json_encode($this->_sql->autocomplete($this->getText("q")));
        } else {
            echo "Error Processing Request";
        }
    }
    public function consulta_fila_ajax()
    {
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            echo json_encode($this->_sql->consulta_fila($this->getText("dato")));
        } else {
            echo "Error Processing Request";
        }
    }
    public function exel()
    {
        require_once ROOT . "public" . DS . "files" . DS . "excelreport" . DS . "01simple-download-xlsx.php";
    }

    public function estado_ajax(Type $var = null)
    {
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            // print_r($_POST);exit;
            $result = $this->_sql->estado(array(
                $this->getInt("id"),
                $this->getInt("check"),
            ));

            if (!$result) {
                echo "Ha ocurrido un error";
            }
            echo "Se actualizo el estado ";
        } else {
            echo "Error Processing Request";
        }
    }

    public function eliminar_ajax($id)
    {
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            $result = $this->_sql->eliminar($id);
            if (!$result) {
                echo "Ha ocurrido un error";
            }
            echo "Se elimino " . $result . " fila(s)";
        } else {
            echo "Error Processing Request";
        }
    }

    public function modificar_ajax()
    {
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            if ($this->getInt("cb_contribuyente") == 0) {
                echo json_encode(array("error"=>"Debe seleccionar un contribuyente existente"));
                exit;
            }
            $result = $this->_sql->modificar(
                array(
                    $this->getText("txtruc"),
                    $this->getText("txtempresa"),
                    $this->getText("txtrepresentante"),
                    $this->getText("txtdireccion"),
                    $this->getText("txtemail"),
                    $this->getText("txttelefono"),
                    $this->getText("txtcelular"),
                    $this->getInt("cb_contribuyente"),
                    $this->getInt("id")
                )
            );
            if (!$result) {
                echo json_encode(array("error"=>"Ha ocurrido un error" . $result));
                exit;
            }
            echo json_encode("Se modifico " . $result . " fila(s)");
            exit;
        } else {
            echo "Error Processing Request";
        }
    }

}
