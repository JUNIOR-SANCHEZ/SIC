<?php

/**
 * 
 */
class Registry {

    private static $_instancia;
    private $_data;

   
    /**
     * __construct
     * @access private
     * @return void
     */
    private function __construct() {
        
    }

    /**
     * getInstancia
     * @access public
     * @return void
     * @static
     * 
     */
    public static function getInstancia() {
        if(!self::$_instancia instanceof self){
            self::$_instancia = new Registry();
        }
        return self::$_instancia;
    }
    
    /**
     * __set
     *
     * @param  mixed $name
     * @param  mixed $value
     *
     * @return void
     */
    public function __set($name, $value) {
        $this->_data[$name] = $value;
    }
    
    /**
     * __get
     *
     * @param  mixed $name
     *
     * @return void
     */
    public function __get($name) {
        if(isset($this->_data[$name])){
            return $this->_data[$name];
        }
        return false;
    }

}

