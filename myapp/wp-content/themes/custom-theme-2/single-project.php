<?php get_header(); ?>


<!-- showing posts in fixed layout  -->
<div class="container">

    <h2>Movie Single Page</h2>

    <?php
        if (have_posts()): // if have posts or not - checking
        
            while (have_posts()): // loop section
        
                the_post();

                // this will run again & again bcz of loop
                get_template_part("template-parts/content", get_post_format());  // content.php waali use hogi

            endwhile;
        endif;

    ?>

</div>



<?php get_footer(); ?>