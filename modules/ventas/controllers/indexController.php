<?php
class indexController extends ventasController
{
    public function __construct()
    {
        parent::__construct();
    }
//FIXME: SIN CODIFICAR
    public function index()
    {
        $this->_view->assign("title", "");
        $this->_view->renderizar(" ", " ", " ");
    }
//FIXME: SIN CODIFICAR
    public function consulta_ajax()
    {
        if (!empty(_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower(_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
        } else {
            echo "Error Processing Request";
        }
    }
//FIXME: SIN CODIFICAR
    public function consulta_id_ajax()
    {
        if (!empty(_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower(_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
        } else {
            echo "Error Processing Request";
        }
    }
//FIXME: SIN CODIFICAR
    public function insertar_ajax()
    {
        if (!empty(_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower(_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
        } else {
            echo "Error Processing Request";
        }
    }
//FIXME: SIN CODIFICAR
    public function modificar_ajax()
    {
        if (!empty(_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower(_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
        } else {
            echo "Error Processing Request";
        }
    }
}
