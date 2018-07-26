<?php

return [
    'settings' => [
      'determineRouteBeforeAppMiddleware' => false,
      'displayErrorDetails' => true,
        'db' => [
           'driver' => 'mysql',
           'host' => 'localhost',
           'database' => 'school_idol',
           'username' => 'root',
           'password' => '',
           'charset'   => 'utf8',
           'collation' => 'utf8_unicode_ci',
           'prefix'    => '',
       ],
        // View settings
        'view' => [
            'template_path' => ROOT . '/app/src/Views',
            'twig' => [
                'cache' => __DIR__ . '/../cache/twig',
                'debug' => true,
                'auto_reload' => true,
            ],
        ],

        // monolog settings
        'logger' => [
            'name' => 'app',
            'path' => __DIR__ . '/../log/app.log',
        ],
      
    ],
];
