<?php get_header("v2"); ?>


<!-- to check if it's the home.php page -->
<?php
// if(is_home()){
//     echo "this is home page";
// }else if(is_front_page()){
//     echo "this is our front page";
// }else{
//     echo "this is just another page";
// }

?>

<!-- showing posts in fixed layout  -->
<div class="container">

    <h2>front-page.php waali temp</h2>

    <div class="row" style="gap:20px;flex-wrap: nowrap;">
        <div class="col-md-9">

            <?php
            if (have_posts()): // if have posts or not - checking
            
                while (have_posts()): // loop section
            
                    the_post();

                    // this will run again & again bcz of loop
                    get_template_part("template-parts/content", get_post_format());  // content.php
            
                endwhile;
            endif;

            ?>
        </div>
        <div class="col-md-3 sidebar-container custom-style">

            <?php get_sidebar(); ?>
        </div>
    </div>

</div>



<?php get_footer(); ?>