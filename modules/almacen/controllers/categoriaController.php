<?php
class categoriaController extends almacenController
{
    public function __construct() {
        parent::__construct();
    }
    public function index()
    {
        $this->_view->assign("title","Categoria");
        $this->_view->renderizar("index","almacen","categoria");
    }
}
