<script type="text/javascript" src="catalog/view/theme/hazelandmarie/js/supersized/supersized.3.2.7.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/hazelandmarie/js/supersized/supersized.shutter.min.js"></script>
<script type="text/javascript">
      
      jQuery(function($){
        
        $.supersized({
        
          // Functionality
          slide_interval          :   3000,   // Length between transitions
          transition              :   1,      // 0-None, 1-Fade, 2-Slide Top, 3-Slide Right, 4-Slide Bottom, 5-Slide Left, 6-Carousel Right, 7-Carousel Left
          transition_speed    : 700,    // Speed of transition

          vertical_center     : 1,
          horizontal_center   : 1,

          // Components             
          slide_links       : 'blank',  // Individual links for each slide (Options: false, 'num', 'name', 'blank')
          slides          :   [     // Slideshow Images

                                <?php foreach ($banners as $banner) { ?>
                                  <?php if ($banner['link']) { ?>
                                     {image : '<?php echo $banner['image']; ?>',  title : '<a href="<?php echo $banner['link']; ?>"><?php echo $banner["title"]; ?></a>', thumb : '<?php echo $banner['image']; ?>', url :' <?php echo $banner['link']; ?>' },
                                  <?php } else { ?>
                                    {image : '<?php echo $banner['image']; ?>',  title : '<?php echo $banner["title"]; ?>', thumb : '<?php echo $banner['image']; ?>' },
                                  <?php } ?>
                                <?php } ?>
                        ]
          
        });
      });
        
</script>

<script type='text/javascript'>
    $(document).ready(function(){   
      var theWindow           = $(window),
          $bks                = $('#slideshow<?php echo $module; ?>'),
          $bks_img            = $('#slideshow<?php echo $module; ?> > a > img'),
          $caption_box        = $('.nivo-caption'),
          $controlNav         = $('.nivo-controlNav');
                        
      function resizeBg() {      
            var $difference         = theWindow.width()/2 - $bks_img.width()/2,
                $difference_caption = theWindow.width()/2 - 480;
            $bks.css('width', theWindow.width());
            $bks_img.css('left', $difference);
            $caption_box.css('left', $difference_caption);
            $controlNav.css('right', $difference_caption);
      }
                              
      theWindow.resize(function() {
        resizeBg();
      }).trigger("resize");
    
    });
  </script>