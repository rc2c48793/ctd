<?php get_header(); ?>





<!-- showing posts in fixed layout  -->
<div class="container">

    <h2>Single Page Template</h2>

    <?php
        if (have_posts()): // if have posts or not - checking
        
            while (have_posts()): // loop section
        
                the_post();
    ?>

    <?php the_title(); ?>
    <?php the_content(); ?>

    <?php                
            endwhile;
        endif;

    ?>

</div>



<?php get_footer(); ?>