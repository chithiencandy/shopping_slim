<?php

namespace App\Controllers;

class Controller {

    protected $container;

    public function __construct($c) {
        $this->container = $c;
    }

    function __get($p) {
        if ($this->container[$p]) {
            return $this->container[$p];
        }
    }

}
