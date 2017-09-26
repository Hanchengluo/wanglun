<?php

namespace app\controllers;


/**
 * 博客
 */
class BlogController extends \yii\web\Controller
{
	
	public function actionIndex()
	{
		return $this->render("index");
	}
	
	
	public function actionDetail()
	{
		return $this->render("detail");
	}
	
}