<?php echo $header; ?>
	<?php echo $content_top; ?>
<section id="content" class="content-home">
	<h1 style="display: none;"><?php echo $heading_title; ?></h1>
	<!--Control Bar-->
	<div id="controls-wrapper" class="load-item">
		<div id="controls">    
		  
		  <!--Slide captions displayed here-->
		  <div id="slidecaption">
		  </div>
		        
		  <!--Navigation-->
		  <ul id="slide-list"></ul>
		  
		</div>
	</div>
	<section id="notification"></section>
	<div class="clear"></div>	
	<?php echo $column_left; ?>
	<?php echo $column_right; ?>
	<div class="clear"></div>	
	<?php echo $content_bottom; ?>
</section>
<?php echo $footer; ?>