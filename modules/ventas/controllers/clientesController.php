<?php
class clientesController extends ventasController
{
    private $_sql;
    public function __construct()
    {
        parent::__construct();
        $this->_sql = $this->loadModel('clientes');
    }
    public function index()
    {
        $this->_view->setJs(array('js'));
        $paginador = new Paginador();
        $this->_view->assign('title', 'Clientes');
        $this->_view->assign('consulta',$paginador->paginar($this->_sql->consultas(),false));
        $this->_view->assign('paginador',$paginador->getView('paginacion_ajax'));
        $this->_view->renderizar('index', 'ventas', 'clientes');
    }
    public function consulta_ajax()
    {
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            $pagina = $this->getInt('pagina');
            $paginador = new Paginador();
            $this->_view->assign('consulta',$paginador->paginar($this->_sql->consultas()));
            $this->_view->assign('paginador',$paginador->getView('paginacion_ajax'));
            $this->_view->renderizar('viewAjax/index',false,false,true);

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
            $result = $this->_sql->insertar(array(
                $this->getText('txtnombre'),
                $this->getText('txtapellido'),
                $this->getText('txtcedula'),
                $this->getText('txtdireccion'),
                $this->getText('txttelefono'),
                $this->getText('txtcelular'),
                $this->getText('txtemail')
            ));
            if(!$result){
                echo json_encode(array('error'=>'Ha ocurrido un error inexperado','sql'=>$result));
                exit;
            }
            echo json_encode('Se registro '. $result. ' fila(s)');
            exit;
        } else {
            echo "Error Processing Request";
        }
    }
    public function modificar_ajax(Type $var = null)
    {
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            $result = $this->_sql->modificar(array(
                $this->getText('txtnombre'),
                $this->getText('txtapellido'),
                $this->getText('txtcedula'),
                $this->getText('txtdireccion'),
                $this->getText('txttelefono'),
                $this->getText('txtcelular'),
                $this->getText('txtemail'),
                $this->getInt('id')
            ));
            if(!$result){
                echo json_encode(array('error'=>'Ha ocurrido un error inexperado','sql'=>$result));
                exit;
            }
            echo json_encode('Se modifico '. $result. ' fila(s)');
            exit;
        } else {
            echo "Error Processing Request";
        }
    }
}
