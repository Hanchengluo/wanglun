<?php
namespace app\controllers;

use yii\web\Controller;

class SiteController extends  Controller
{
	
	public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
            'thumb' => [
                'class' => ThumbAction::className(),
                'imageDirectoryPath' => '@webroot/upload',
                'thumbDirectoryPath' => '@webroot/thumb',
                'defaultDirectoryPrefix' => ['product','other','service'], // 这里必须要有 -----
                'defaultThumbQuality' => 100, // 1 - 100
                'rules' => [
                    //Simple Rule
                    ['sizes' => [[112, 112]], 't' => ThumbRequest::TYPE_AUTO], 
                    ['sizes' => [[190, 190]], 't' => ThumbRequest::TYPE_AUTO], 
                    ['sizes' => [[320, 213]], 't' => ThumbRequest::TYPE_AUTO], 
//                    ['sizes' => [[200, 200]], 't' => ThumbRequest::TYPE_AUTO, 'q' => 50],
                    //Full Rule  
                    [   // 微信图文消息大小 微信  360*200，小图200*200
                        'prefix' => ['service',],  // 这里是为了分类   -----
                        'sizes' => [
                            [360,200],
                            [200*200],
                        ],
//                        't' => [ThumbRequest::TYPE_AUTO, ThumbRequest::TYPE_CROP],
//                        'q' => [50, 75],
                    ],
                ],
            ],
        ];
    }
	
	public function actionIndex()
	{
		return $this->render('index');
	}
	
}