<?php get_header(); ?>

<!-- showing posts in fixed layout  -->
<div class="container">

    <h2>My Search Page</h2>
    <p>You Searched For: <?php echo get_search_query(); // to get the url query ?> </p>

    <?php
        if (have_posts()): // if have posts or not - checking
        
            while (have_posts()): // loop section
        
                the_post();

                // this will run again & again bcz of loop
                get_template_part("template-parts/content", get_post_format());  // content.php

            endwhile;
        else:
            echo "<h4> No Post Found </h4>";
        endif;


    ?>

</div>



<?php get_footer(); ?>