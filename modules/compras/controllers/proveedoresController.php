<?php
class proveedoresController extends comprasController
{
    private $_sql;
    public function __construct()
    {
        parent::__construct();
        $this->_sql = $this->loadModel("proveedores");
    }
    public function index()
    {
        $this->_view->setJs(array("js"));
        $paginador = new Paginador();
        $this->_view->assign("title", "Proveedores");
        $this->_view->assign('consulta', $paginador->paginar($this->_sql->consulta(), false));
        $this->_view->assign('paginador', $paginador->getView('paginacion_ajax'));
        $this->_view->renderizar("index", "compras", "proveedores");
    }
    public function consulta_paginacion_ajax()
    {
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            $pagina = $this->getInt('pagina');
            $paginador = new Paginador();
            $this->_view->assign('consulta', $paginador->paginar($this->_sql->consulta(), $pagina));
            $this->_view->assign('paginador', $paginador->getView('paginacion_ajax'));
            $this->_view->renderizar("viewAjax/index",false, false, true);
        } else {
            echo "Error Processing Request";
        }
    }
    public function insertar()
    {
        $this->_sql->insertar(
            array(
                
            ));
    }
}
