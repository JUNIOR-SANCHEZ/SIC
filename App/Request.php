<?php
/**
 * Request
 * @autor Julio Sánchez Gaona
 * 
 */
class Request {

    private $_modulo;
    private $_controlador;
    private $_metodo;
    private $_argumentos;
    private $_modules;

    /**
     * __construct
     *
     * @return void
     */
    public function __construct() {
        if (isset($_GET['url'])) {

            $url = filter_input(INPUT_GET, "url", FILTER_SANITIZE_URL);
            $url = explode('/', $url);
            $url = array_filter($url);

            $this->_modules = array('usuarios','almacen','compras','ventas');
            $this->_modulo = strtolower(array_shift($url));

            if (!$this->_modulo) {
                $this->_modulo = false;
            } else {
                if (count($this->_modules)) {
                    if (!in_array($this->_modulo, $this->_modules)) {
                        $this->_controlador = $this->_modulo;
                        $this->_modulo = false;
                    } else {
                        $this->_controlador = strtolower(array_shift($url));

                        if (!$this->_controlador) {
                            $this->_controlador = 'index';
                        }
                    }
                } else {
                    $this->_controlador = $this->_modulo;
                    $this->_modulo = false;
                }
            }

            $this->_metodo = strtolower(array_shift($url));
            $this->_argumentos = $url;
        }

        if (!$this->_controlador) {
            $this->_controlador = DEFAULT_CONTROLLER;
        }

        if (!$this->_metodo) {
            $this->_metodo = 'index';
        }

        if (!isset($this->_argumentos)) {
            $this->_argumentos = array();
        }
    }

    /**
     * getControlador
     *
     * @return void
     */
    public function getControlador() {
        return $this->_controlador;
    }

    /**
     * getMetodo
     *
     * @return void
     */
    public function getMetodo() {
        return $this->_metodo;
    }

    /**
     * getArgs
     *
     * @return void
     */
    public function getArgs() {
        return $this->_argumentos;
    }
    
    /**
     * getModulo
     *
     * @return void
     */
    public function getModulo()
    {
        return $this->_modulo;
    }
}
