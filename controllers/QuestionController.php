<?php

namespace app\controllers;


/**
 * 常见问题
 */
class QuestionController extends \yii\web\Controller
{
	
	public function actionIndex()
	{
		return $this->render("index");
	}
	
}