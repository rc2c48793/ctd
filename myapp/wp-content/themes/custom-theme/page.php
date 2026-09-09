<?php
get_header();
?>


<div>
    <?php
    if (have_posts()) {
        while (have_posts()) {
            the_post();
            ?>

            <div class="custom-page-wrapper">
                <h1> <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h1>
                <p> <?php  the_content(); ?> </p>
            </div>

            <?php
        }
    }
    ?>
</div>


<?php
get_footer();
?>