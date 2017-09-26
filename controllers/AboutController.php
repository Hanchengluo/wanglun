<?php

namespace app\controllers;


/**
 * 关于我们
 */
class AboutController extends \yii\web\Controller
{
	
	public function actionIndex()
	{
		return $this->render("index");
	}
	
}