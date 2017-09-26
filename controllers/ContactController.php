<?php

namespace app\controllers;



/**
 * 联系我们
 */
class ContactController extends \yii\web\Controller
{
	
	public function actionIndex()
	{
		return $this->render("index");
	}
	
}