<?php
class proveedoresController extends comprasController
{
    private $_sql;
    public function __construct()
    {
        parent::__construct();
        $this->_sql = $this->loadModel("proveedores");
        $this->_view->setJsPlugin(array("jquery.inputmask"));
    }
    public function index()
    {
        // print_r($this->_sql->tipo_cont("Per"));exit;
        $this->_view->setJs(array("js"));
        $paginador = new Paginador();
        $this->_view->assign("title", "Proveedores");
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
    public function insertar()
    {
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {

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
        // echo ROOT . "public" . DS . "files" . DS . "excelreport" . DS . "personal_excel.php <br>";
        require_once ROOT . "public" . DS . "files" . DS . "excelreport"  . DS . "01simple-download-xlsx.php";

    }

}
