<?php
use yii\helpers\Html;

use app\assets\CustomAsset;
CustomAsset::register($this);

?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <h1><?= Html::encode($this->title) ?></h1>
	<?= Html::csrfMetaTags() ?>
	<?php $this->head() ?>
    <!--[if lt IE 9]>
      <script src="http://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
<?php $this->beginBody() ?>
    <header id="mainheader">
      <!--// Top Baar //-->
      <div class="kd-topbar">
        <div class="container">
          <div class="row">
            <div class="col-md-7">
              <ul class="kd-topinfo">
                <li>
                  <div id="lang_sel">
                    <ul>
                        <li>
                            <a class="lang_sel_sel icl-cn" href="#">中文</a>
                            <ul>
                                <!--<li class="icl-fr">
                                    <a href="#">FR</a>
                                </li>
                                <li class="icl-de">          
                                    <a href="#">DE</a>
                                </li>
                                <li class="icl-nl">          
                                    <a href="#">NL</a>
                                </li> -->
								<li class="icl-en">          
                                    <a href="#">EN</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                  </div>
                </li>
                <li>
                  <i class="fa fa-phone"></i> Phone: +44 123 456 789
                </li>
                <li>
                  <i class="fa fa-envelope-o"></i> <a href="#">Email: Info@kodeforest.com</a>
                </li>
              </ul>
            </div>
            <div class="col-md-5">
              <ul class="kd-userinfo">
                <li>
                  <div class="kd-social-network">
                    <ul>
                      <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                      <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                      <li><a href="#"><i class="fa fa-tumblr"></i></a></li>
                      <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                      <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                      <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                    </ul>
                  </div>
                </li>
                <li><a href="#" data-toggle="modal" data-target="#registerModalbox">Register</a>
                  <!-- Modal -->
                  <div class="modal fade kd-loginbox" id="registerModalbox" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-body">
                          <a href="#" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></a>
                          <div class="kd-login-title">
                            <h2>Register TO</h2>
                            <span>Your Account</span>
                            <div class="kd-login-network">
                              <ul>
                                <li><a href="#" data-original-title="Facebook"><i class="fa fa-facebook"></i> Login with Facebook</a></li>
                                <li><a href="#" data-original-title="Twitter"><i class="fa fa-twitter"></i> Login with Twitter</a></li>
                              </ul>
                            </div>
                          </div>
                          <div class="kd-login-sepratore"><span>OR</span></div>

                          <form>
                            <p><i class="fa fa-envelope-o"></i> <input type="text" placeholder="Email Address"></p>
                            <p><i class="fa fa-lock"></i> <input type="password" placeholder="Your Password"></p>
                            <p><input type="submit" value="Register now" class="thbg-color"> </p>
                          </form>

                        </div>
                      </div>
                    </div>
                  </div>
                </li>
                <li><a href="#" data-toggle="modal" data-target="#Modalbox">Login</a>
                  <!-- Modal -->
                  <div class="modal fade kd-loginbox" id="Modalbox" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-body">
                          <a href="#" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></a>
                          <div class="kd-login-title">
                            <h2>LOGIN TO</h2>
                            <span>Your Account</span>
                            <div class="kd-login-network">
                              <ul>
                                <li><a href="#" data-original-title="Facebook"><i class="fa fa-facebook"></i> Login with Facebook</a></li>
                                <li><a href="#" data-original-title="Twitter"><i class="fa fa-twitter"></i> Login with Twitter</a></li>
                              </ul>
                            </div>
                          </div>
                          <div class="kd-login-sepratore"><span>OR</span></div>

                          <form>
                            <p><i class="fa fa-envelope-o"></i> <input type="text" placeholder="Email Address"></p>
                            <p><i class="fa fa-lock"></i> <input type="password" placeholder="Your Password"></p>
                            <p><input type="submit" value="Login now" class="thbg-color"> <a href="#">Forget Password?</a></p>
                          </form>

                        </div>
                      </div>
                    </div>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <!--// Top Baar //-->

      <!--// Header Baar //-->
      <div class="kd-headbar">
        <div class="container">
          <div class="row">
            <div class="col-md-3"><a href="index.html" class="logo"><img src="/static/images/logo.png" alt=""></a></div>
            <div class="col-md-9">
              <div class="kd-rightside">
                <nav class="navbar navbar-default navigation">
                  <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-1">
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                    </button>
                  </div>

                  <div class="collapse navbar-collapse" id="navbar-collapse-1">
                    <ul class="nav navbar-nav">
                      <li><a href="/">首页</a></li>
					  <li><a href="/about">关于我们</a></li>
					  <li><a href="/question">常见问题</a></li>
					  <li><a href="/blog">博客</a></li>
                      <li><a href="/contact">联系我们</a></li>
                    </ul>
                  </div>
                    <!-- /.navbar-collapse -->
                </nav>
                <div class="kd-search">
                  <a href="#" class="kd-searchbtn" data-toggle="modal" data-target="#searchmodalbox"><i class="fa fa-search"></i></a>
                  <!-- Modal -->
                  <div class="modal fade kd-loginbox" id="searchmodalbox" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-body">
                          <a href="#" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></a>
                          <div class="kd-login-title">
                            <h2>Search Your KeyWord</h2>
                          </div>

                          <form>
                            <p><i class="fa fa-search"></i> <input type="text" placeholder="Enter Your Keyword"></p>
                            <p><input type="submit" value="Search" class="thbg-color"> </p>
                          </form>

                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--// Header Baar //-->

    </header>
	
	<?= $content ?>
	
    <!--// Footer //-->
    <footer id="footer-widget">
      <div class="container">
        <div class="row">
          
          <div class="widget col-md-4 kd-textwidget">
            <div class="kd-widget-title"><h2>About KodeForest</h2></div>
            <div class="kd-contactinfo">
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ullamcorper lorem non est mattis molestie. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean convallis nulla sed nisi bibendum, quis vehicula neque vestibulum..</p>
              <!-- <ul>
                <li><i class="fa fa-map-marker"></i> 360, Galaxy ApartmentNear Rekon Estate, limbasa margnexton lita, Australia</li>
                <li><i class="fa fa-phone"></i> 1 808 603 6035</li>
                <li><i class="fa fa-envelope-o"></i> <a href="#">info@kodeforest.com</a></li>
              </ul> -->
            </div>
          </div>

          <div class="widget col-md-4 kd-followus-widget">
            <div class="kd-widget-title"><h2>关注我们</h2></div>
            <ul>
              <li><a href="#" data-original-title="Facebook"><i class="fa fa-facebook"></i></a></li>
              <li><a href="#" data-original-title="Twitter"><i class="fa fa-twitter"></i></a></li>
              <li><a href="#" data-original-title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
              <li><a href="#" data-original-title="instagram"><i class="fa fa-instagram"></i></a></li>
              <li><a href="#" data-original-title="Rss"><i class="fa fa-rss"></i></a></li>
              <li><a href="#" data-original-title="Youtube"><i class="fa fa-youtube"></i></a></li>
              <li><a href="#" data-original-title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
              <li><a href="#" data-original-title="Dribbble"><i class="fa fa-dribbble"></i></a></li>
              <li><a href="#" data-original-title="Google-Plus"><i class="fa fa-google-plus"></i></a></li>
              <li><a href="#" data-original-title="skype"><i class="fa fa-skype"></i></a></li>
            </ul>
          </div>

          <div class="widget col-md-4 kd-userinfo-widget">
            <div class="kd-widget-title"><h2>Contact</h2></div>
            <ul>
                <li><i class="fa fa-map-marker"></i> 15489 Vegas Drive, Las Vegas, Neveda</li>
                <li><i class="fa fa-phone-square"></i> +1 808 603 6035, +1 808 603 6035</li>
                <li><i class="fa fa-envelope"></i> Kodeforest.Theme</li>
                <li><i class="fa fa-skype"></i> <a href="#">info@kodeforest.com</a></li>
              </ul>
          </div>

          

        </div>
      </div>
    </footer>
    <!--// Footer //-->

    <!--// CopyRight //-->
    <div id="copyright">
      <div class="container">
        <div class="row">
          <div class="col-md-6"><p>Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></div>
          <div class="col-md-6">
            <nav class="footer-nav">
              <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Blog</a></li>
                <li><a href="#">Shop</a></li>
                <li><a href="#">ShortCode</a></li>
                <li><a href="#">TypoGraphy</a></li>
                <li><a href="#">Contact</a></li>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    </div>
    <!--// CopyRight //-->

	
<?php $this->endBody() ?>
  </body>
</html>
<?php $this->endPage() ?>
