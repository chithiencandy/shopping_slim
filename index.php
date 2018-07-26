<?php

if (PHP_SAPI == 'cli-server') {
    // To help the built-in PHP dev server, check if the request was actually for
    // something which should probably be served as a static file
    $file = __DIR__ . $_SERVER['REQUEST_URI'];
    if (is_file($file)) {
        return false;
    }
}
require __DIR__ . '/vendor/autoload.php';
session_start();

require __DIR__ . '/config/constant.php';
$settings = require __DIR__ . '/config/settings.php';
$app = new \Slim\App($settings);
require __DIR__ . '/config/controller.php';
require __DIR__ . '/config/dependencies.php';
require __DIR__ . '/config/middleware.php';
require __DIR__ . '/config/routes.php';


$app->run();
