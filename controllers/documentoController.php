<?php
class documentoController extends Controller {
    public function __construct()
    {
        parent::__construct();
    }
    public function index() 
    {
         $this->_view->assign("title", "Tipo documento");
         $this->_view->renderizar("index", "documento");
    }
}