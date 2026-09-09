<?php get_header(); ?>

<?php
// the query
$wp_all_query = new WP_Query(array('post_type' => 'post', 'post_status' => 'publish'));
?>

<?php

if ($wp_all_query->have_posts()):  // check if we got published posts or not

    ?>

    <h2> My default posts</h2>

    <ul>
        <!-- run the loop if we got published posts -->
        <?php
        while ($wp_all_query->have_posts()):
            $wp_all_query->the_post(); // increment of while loop (next post)
            ?>

            <li>
                <a href="<?php the_permalink(); ?>">
                    <?php the_title(); ?>
                </a>
                <div class="meta-data">
                    <?php the_author();
                    the_time('F j, Y g:i a'); ?>
                </div>
                <?php the_content(); // returns the paragraph tag itself ?>
            </li>

        <?php endwhile; ?>

        <!-- end of the loop -->
    </ul>

<?php else: ?>
    <p> <?php _e("sorry, couldn't find the posts of your criteria.") ?> </p>
<?php endif; ?>



<!-- custom sidebar starts -->

<?php if(is_active_sidebar('sidebar-1')) : ?>
    <div id="secondary" class="sidebar-container" role="complementary">
        <div class="widget-area">
            <?php dynamic_sidebar('sidebar-1') ?>
        </div>
    </div>

<?php endif; ?>


<!-- custom sidebar ends -->

<!-- we can also use the wordpress default native widgets directly in the page -->

<div style="padding:50px;background:pink;">
    <h2 style="font-size:20px;">we can also use the wordpress default native widgets directly in the page</h2>
    <?php get_search_form(); ?>
<?php get_calendar(); ?>
<?php wp_loginout(); ?>
</div>



<?php
// the query
$wp_all_query = new WP_Query(array('post_type' => 'cars_data', 'post_status' => 'publish'));
?>

<?php

if ($wp_all_query->have_posts()):  // check if we got published posts or not

    ?>


    <h2>Custom Post Types Posts</h2>

    <ul>
        <!-- run the loop if we got published posts -->
        <?php
        while ($wp_all_query->have_posts()):
            $wp_all_query->the_post(); // increment of while loop (next post)
            ?>

            <li>
                <a href="<?php the_permalink(); ?>">
                    <?php the_title(); ?>
                </a>
                <?php the_content(); // returns the paragraph tag itself ?>
            </li>

        <?php endwhile; ?>

        <!-- end of the loop -->
    </ul>

<?php else: ?>
    <p> <?php _e("sorry, couldn't find the posts of your criteria.") ?> </p>
<?php endif; ?>




<!-- Main Content-->
<div class="container px-4 px-lg-5">
    <div class="row gx-4 gx-lg-5 justify-content-center">
        <div class="col-md-10 col-lg-8 col-xl-7">
            <!-- Post preview-->
            <div class="post-preview">
                <a href="post.html">
                    <h2 class="post-title">Man must explore, and this is exploration at its greatest</h2>
                    <h3 class="post-subtitle">Problems look mighty small from 150 miles up</h3>
                </a>
                <p class="post-meta">
                    Posted by
                    <a href="#!">Start Bootstrap</a>
                    on September 24, 2023
                </p>
            </div>
            <!-- Divider-->
            <hr class="my-4" />
            <!-- Post preview-->
            <div class="post-preview">
                <a href="post.html">
                    <h2 class="post-title">I believe every human has a finite number of heartbeats. I don't intend to
                        waste any of mine.</h2>
                </a>
                <p class="post-meta">
                    Posted by
                    <a href="#!">Start Bootstrap</a>
                    on September 18, 2023
                </p>
            </div>
            <!-- Divider-->
            <hr class="my-4" />
            <!-- Post preview-->
            <div class="post-preview">
                <a href="post.html">
                    <h2 class="post-title">Science has not yet mastered prophecy</h2>
                    <h3 class="post-subtitle">We predict too much for the next year and yet far too little for the next
                        ten.</h3>
                </a>
                <p class="post-meta">
                    Posted by
                    <a href="#!">Start Bootstrap</a>
                    on August 24, 2023
                </p>
            </div>
            <!-- Divider-->
            <hr class="my-4" />
            <!-- Post preview-->
            <div class="post-preview">
                <a href="post.html">
                    <h2 class="post-title">Failure is not an option</h2>
                    <h3 class="post-subtitle">Many say exploration is part of our destiny, but it’s actually our duty to
                        future generations.</h3>
                </a>
                <p class="post-meta">
                    Posted by
                    <a href="#!">Start Bootstrap</a>
                    on July 8, 2023
                </p>
            </div>
            <!-- Divider-->
            <hr class="my-4" />
            <!-- Pager-->
            <div class="d-flex justify-content-end mb-4"><a class="btn btn-primary text-uppercase" href="#!">Older Posts
                    →</a></div>
        </div>
    </div>
</div>


<?php get_footer(); ?>