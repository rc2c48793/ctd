<h4>content aside</h4>
<div class="row  custom-style">
    <div class="col-md-3">
        <div class="featured-image">
            <!-- set the fallback image if no thumbnail is there -->
            <?php
                if (has_post_thumbnail()) {
                    the_post_thumbnail("thumbnail");
                } else{
                ?>
                <img src="<?php echo get_template_directory_uri(). '/images/fallback-img.png' ?>" style="width:150px;height:150px;">
                <?php
                }
            ?>
        </div>
    </div>
    <div class="col-md-9">
        <div class="meta-data">
            <?php the_time('F j, Y g:i a') ?> |
            <a href="<?php echo get_author_posts_url(get_the_author_meta('ID')) ?>"><?php the_author(); ?> </a> |
            <?php /* the_category(); */ ?>
            <?php
            $categories = get_the_category();  // [ {term_id:12,cat_name:tech,slug:tech}, {...},{...}]
            $separator = ",";
            $catoptions = "";
            foreach ($categories as $category) {
                $catoptions .= "<a href='" . get_category_link($category->term_id) . "'/>" . $category->cat_name . "</a>" . $separator;
            }

            echo trim($catoptions, $separator); // removes the last comma
            ?>


        </div>
        <h3> <a href="<?php the_permalink(); ?>"> <?php the_title(); ?> </a> </h3>
        <p> <?php the_content(); ?></p>
    </div>
</div>