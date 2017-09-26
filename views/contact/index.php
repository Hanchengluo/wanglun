<?php
use app\assets\MapAsset;
MapAsset::register($this);
?>

    <!--// Sub Header //-->
    <div class="kd-subheader">
      <div class="container">
        <div class="row">
          <div class="col-md-12">

            <div class="subheader-info">
              <h1>Contact Us</h1>
              <!-- <p>Morbi euismod euismod consectetur. Donec pharetra, lacus at convallis maximus, arcu quam accumsan diam, et aliquam odio elit gravida mi</p> -->
            </div>
            <div class="kd-breadcrumb">
              <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Blog</a></li>
                <li><a href="#">Our Team</a></li>
              </ul>
            </div>

          </div>
        </div>
      </div>
    </div>
    <!--// Sub Header //-->

    <!--// Content //-->
    <div class="kd-content">

      <!--// Page Section //-->
      <section class="kd-pagesection" style=" padding: 0px 0px 0px 0px; margin: -30px 0px 0px 0px; ">
        <div class="container full-content">
          <div class="row">
				<!-- Map Secion Start -->
				<div class="map-sec">
					<div style="width:100%;height:400px" class="map-canvas" id="map-canvas"></div>
				</div>
				<!-- Map Secion End -->
          </div>
        </div>
      </section>
      <!--// Page Section //-->

      <!--// Page Section //-->
      <section class="kd-pagesection" style=" padding: 30px 0px 0px 0px; margin: 0px 0px 0px 0px; ">
        <div class="container">
          <div class="row">
            <div class="col-md-9">
              <div class="kd-rich-editor">
                <h2>Get in Touch With us!</h2>
                <p>Fill out all required fields to send a message. You have to login to your wordpress account to post any comment. Please don´t spam, thank you!</p>
              </div>
              <div id="respond">
                <form method="post" class="comments-form" id="contactform">
                  <p><input type="text" name="name" placeholder="Name *" /></p>
                  <p><input type="text" name="phone" placeholder="Phone *" /></p>
                  <p><input type="text" name="email" placeholder="Email *" / ></p>
                  <p><input type="text" name="website" placeholder="Website *" / ></p>
                  <p class="kd-textarea"><textarea name="message" placeholder="add your comment"></textarea></p>
					<p class="input-block">
						<label for="verify">Are you human?</label>
						<iframe src="inc/capcha_page.php" height="29" width="80" scrolling="no" frameborder="0" marginheight="0" marginwidth="0" class="capcha_image_frame" name="capcha_image_frame"></iframe>
						<input class="verify" type="text" id="verify" name="verify" />
					</p>
					<p class="clearfix"></p>
                  <p class="kd-button"><input type="submit" class="thbg-color" value="Send" /></p>
                </form>
            </div>
            </div>
            <div class="col-md-3">
              <div class="widget kd-userinfo-widget">
                <div class="kd-widget-title"><h2>Contact</h2></div>
                <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor </p>
                <ul>
                    <li><i class="fa fa-map-marker"></i> 15489 Vegas Drive, Las Vegas, Neveda</li>
                    <li><i class="fa fa-phone-square"></i> +1 808 603 6035, +1 808 603 6035</li>
                    <li><i class="fa fa-envelope"></i> Kodeforest.Theme</li>
                    <li><i class="fa fa-skype"></i> <a href="#">info@kodeforest.com</a></li>
                  </ul>
              </div>
              <div class="widget kd-followus-widget">
                <div class="kd-widget-title"><h2>Follow Us</h2></div>
                <ul>
                  <li><a data-original-title="Facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                  <li><a data-original-title="Twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                  <li><a data-original-title="Linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
                  <li><a data-original-title="instagram" href="#"><i class="fa fa-instagram"></i></a></li>
                  <li><a data-original-title="Rss" href="#"><i class="fa fa-rss"></i></a></li>
                  <li><a data-original-title="Youtube" href="#"><i class="fa fa-youtube"></i></a></li>
                  <li><a data-original-title="Pinterest" href="#"><i class="fa fa-pinterest"></i></a></li>
                  <li><a data-original-title="Dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!--// Page Section //-->

    </div>
    <!--// Content //-->

