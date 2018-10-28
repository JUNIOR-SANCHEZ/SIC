<?php
class presentacionController extends almacenController{
    public function __construct()
    {
        parent::__construct();
    }
    public function index()         
    {   
         $this->_view->assign("title", "Presentacion");
         $this->_view->renderizar("index", "almacen", "presentacion");
    }
}