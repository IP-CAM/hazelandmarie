<?php echo $header; ?>
<section id="content">
	<?php echo $content_top; ?>
  	<section class="breadcrumb">
    	<?php foreach ($breadcrumbs as $breadcrumb) { ?>
    		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    	<?php } ?>
  	</section>
  	<h1><?php echo $heading_title; ?></h1>
  	<?php if ($categories) { ?>
  		<p>
			<b><?php echo $text_index; ?></b>
    		<?php foreach ($categories as $category) { ?>
    			&nbsp;&nbsp;&nbsp;
				<a href="index.php?route=product/manufacturer#<?php echo $category['name']; ?>">
					<b><?php echo $category['name']; ?></b>
				</a>
    		<?php } ?>
  		</p>
  		<?php foreach ($categories as $category) { ?>
  			<article class="manufacturer-list">
    			<div class="manufacturer-heading">
					<?php echo $category['name']; ?>
					<a id="<?php echo $category['name']; ?>"></a>
				</div>
    			<section class="manufacturer-content">
      				<?php if ($category['manufacturer']) { ?>
      					<?php for ($i = 0; $i < count($category['manufacturer']);) { ?>
      						<ul>
        						<?php $j = $i + ceil(count($category['manufacturer']) / 4); ?>
        						<?php for (; $i < $j; $i++) { ?>
        							<?php if (isset($category['manufacturer'][$i])) { ?>
        								<li><a href="<?php echo $category['manufacturer'][$i]['href']; ?>"><?php echo $category['manufacturer'][$i]['name']; ?></a></li>
        							<?php } ?>
        						<?php } ?>
      						</ul>
      					<?php } ?>
      				<?php } ?>
    			</section>
  			</article>
  		<?php } ?>
  	<?php } else { ?>
  		<section class="content"><?php echo $text_empty; ?></section>
  		<div class="buttons">
    		<div class="right">
				<a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a>
			</div>
  		</div>
	<?php } ?>
    <div class="clear"></div>
    <?php echo $column_left; ?>
    <?php echo $column_right; ?>
    <div class="clear"></div>
    <?php echo $content_bottom; ?>
</section>
<?php echo $footer; ?>