# vendor文件夹内第三方包修改记录

setting模块的控制器里的权限控制 behaviors 中 access 去掉

ad模块中的 Yii前加 \    上传地址修改成 \Yii::getAlias('@webroot') . '/upload/ad/';