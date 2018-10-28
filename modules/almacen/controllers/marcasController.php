<?php
class marcasController extends almacenController {
    public function __construct()
    {
        parent::__construct();
    }
    public function index() 
    {
         $this->_view->assign("title", "Marcas");
         $this->_view->renderizar("index", "almacen", "marcas");
    }
}