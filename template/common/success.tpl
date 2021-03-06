<?php echo $header; ?>
<section id="content">
  <section id="notification"></section>
	<?php echo $content_top; ?>
  	<section class="breadcrumb">
    	<?php foreach ($breadcrumbs as $breadcrumb) { ?>
    		<?php echo $breadcrumb['separator']; ?>
			<a href="<?php echo $breadcrumb['href']; ?>">
				<?php echo $breadcrumb['text']; ?>
			</a>
    	<?php } ?>
  	</section>
  	<h1><?php echo $heading_title; ?></h1>
  	<?php echo $text_message; ?>
  	<div class="buttons">
    	<div class="right">
			<a href="<?php echo $continue; ?>" class="button">
				<span><?php echo $button_continue; ?></span>
			</a>
		</div>
  	</div>
    <div class="clear"></div>
    <?php echo $column_left; ?>
    <?php echo $column_right; ?>
    <div class="clear"></div>
    <?php echo $content_bottom; ?>
</section>
<?php echo $footer; ?>