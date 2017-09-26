<?php
return [
	'id' => 'basic',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'modules' => [
		'admin' => [
			'class' => 'mdm\admin\Module',
			'layout' => 'left-menu',
		],
		'setting' => [
            'class' => 'funson86\setting\Module',
            'controllerNamespace' => 'funson86\setting\controllers',
        ],
		'ad' => [
			'class' => 'yagerguo\yii2ad\AdModule',
		],
	],
	'as access' => [
		'class' => 'mdm\admin\components\AccessControl',
		'allowActions' => [
			'site/*',//允许访问的节点，可自行添加
			'admin/*',//允许所有人访问admin节点及其子节点
			'setting/*',
			'ad/*',
			'contact/*',
			'about/*',
			'blog/*',
		]
	],
	'components' => [
		'setting' => [
            'class' => 'funson86\setting\Setting',
        ],
        'request' => [
            'cookieValidationKey' => 'VuVMXXHkhZ0D_J59YgSuHeTAWhFwf5TE',
        ],
        // 'cache' => [
//            'class' => 'yii\caching\FileCache',
            // 'class' => 'yii\redis\Cache',
//            'cachePath' => '@runtime/cache',
        // ],
        'user' => [
            'identityClass' => 'app\models\User',
            // 'enableAutoLogin' => true,
			'loginUrl' => ['admin/user/login'],
            // 'on '. \yii\web\User::EVENT_AFTER_LOGIN => ['app\components\BbsUserSyncBehavior','afterLogin'],
        ],
        // 'errorHandler' => [
            // 'errorAction' => 'site/error',
        // ],
        // 'mailer' => [
            // 'class' => 'yii\swiftmailer\Mailer',
            // 'useFileTransport' =>false,//这句一定有，false发送邮件，true只是生成邮件在runtime文件夹下，不发邮件
            // 'transport' => [
                // 'class' => 'Swift_SmtpTransport',
                // 'host' => 'smtp.163.com',  //每种邮箱的host配置不一样
                // 'username' => 'qq328538031@163.com',
                // 'password' => 'qq328538031',
                // 'port' => '465',
                // 'encryption' => 'ssl', // tls  ssl
            // ],
            // 'messageConfig'=>[
                // 'charset'=>'UTF-8',
                // 'from'=>['qq328538031@163.com'=>'admin']
             // ],
        // ],
        // 'log' => [
            // 'traceLevel' => YII_DEBUG ? 3 : 0,
            // 'targets' => [
                // [
                    // 'class' => 'yii\log\FileTarget',
                    // 'levels' => ['error', 'warning'],
                // ],
            // ],
        // ],
        'db' => require(__DIR__ . '/db.php'),
        'urlManager' => [
            'enablePrettyUrl' => true,
            'enableStrictParsing' => false,
            'showScriptName' => false,
            'rules' => [
                 'thumb/<path:(.*)>' => '/site/thumb',
            ],
        ],
        'authManager' => [
            'class' => 'yii\rbac\DbManager', // 使用数据库管理配置文件
        ],
        'i18n' => [
            'translations' => [
                '*' => [
                    'class' => 'yii\i18n\PhpMessageSource',
                ],
            ],
        ],
         // 'redis' => [
            // 'class' => 'yii\redis\Connection',
            // 'hostname' => 'localhost',
            // 'port' => 6379,
            // 'database' => 0,
        // ],
		

    ],
    'params' => require(__DIR__ . '/params.php'),
    'language'=>'zh-CN',
];