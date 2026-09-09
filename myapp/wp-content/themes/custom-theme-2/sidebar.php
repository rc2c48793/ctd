<?php //get_search_form(); ?>


<?php if (is_active_sidebar('sidebar-1')): ?>
	<ul id="sidebar">
		<?php dynamic_sidebar('sidebar-1'); ?>
	</ul>
<?php endif; ?>

<img src="<?php echo get_option('my_image_uploader'); ?>" style="width:100%;">
