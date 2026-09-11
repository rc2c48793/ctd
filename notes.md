# v01 (installing wordpress)

1. wordpress creates 10-12 tables automatically in database, so it's important to connect database while installing wordpress in the starting.

# v02 (creating new theme & configure style.css)

1. basic files need to make wordpress theme 
style.css
screenshot.png
header.php
footer.php
functions.php
page.php
single.php
index.php
sidebar.php

2. custom/new theme's folder location : /wp-content/themes/custom-theme

3. The style.css file header is used to configure data about the theme. WordPress uses this information to determine how some features work and displays some of this data under the Appearance > Themes screen for users.

/**
 * Theme Name:        custom theme
 * Theme URI:         https:/rahul.com
 * Description:       Custom theme description
 * Version:           1.0.0
 * Author:            Rahul Bisht
 * Author URI:        https://bisht.com
 */


# v03 (understanding modular codes of wordpress - header.php, footer.php, index.php)

1. to make the custom theme, we have to follow the preset standards & file hierarchy. wordpress has modular code (code divided in separate files to use it as reusable pieces)
2.  header.php = header (includes <html> document code, <body> opening tag and header code)
index.php = page content (contains the main content)
footer.php = footer (footer code and closing </body> and </html> tags)

E.g. 

<!------------- full home page  ----------->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My site</title>
</head>
<body>
    <header>
        This is header
    </header>

    <main>
        <h2>Welcome to my site</h2>
        <p>This is my site</p>
    </main>
    
    <footer>
        This is footer
    </footer>

</body>
</html>

<!------------- header.php  ----------->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My site</title>
</head>

<body>

<header>
    This is header
</header>

<!------------- footer.php  ----------->
<footer>
    This is footer
</footer>

</body>
</html>


<!------------- index.php  ----------->
<?php get_header(); ?>
    <main>
            <h2>Welcome to my site</h2>
            <p>This is my site</p>
    </main>
<?php get_footer(); ?>


3. use get_header() and get_footer() functions to call header and footer in index.php

4. <?php get_bloginfo(); ?>
Retrieves information about the current site.

e.g. <title><?php echo get_bloginfo('name'); ?></title>
retrieves the site title 

# v04 (get the active theme url through get_bloginfo )

1. wordpress links stylesheet, images, js etc through absolute urls
so, to get the absolute root url of active theme (parent) we use: 
get_bloginfo('template_url')

# v05 (action hooks in functions.php & how to rightly link js & cs files)

1. functions.php is the most imp file in wordpress, it works on action hooks.
action hook : way to tell WordPress: “When this particular event happens, run my custom code.”
e.g. jab theme active ho toh admin panel ke sidebar me ek new tab ban jaaye, During WordPress admin initialization (admin_init), When a user logs in (wp_login) etc

2. right way to link css and js files (is to link them in functions.php)
and there is a action hook for that : wp_enqueue_scripts

<?php 

function mywebsite_styles(){
    // stylesheets
    wp_enqueue_style('my-css', 'get_stylesheet_directory_uri()');
    wp_enqueue_style('my-css', 'filename.css');

}

functions mywebsite_scripts(){
    // scripts
    wp_enqueue_script('my-js', 'filename.js');
}

// attach with action hook
add_action( 'wp-enqueue-scripts', 'mywebsite_styles' );
add_action( 'wp-enqueue-scripts', 'mywebsite_scripts' );

?>

- get_stylesheet_uri() : URI to active theme’s stylesheet (jisme humne theme configuration daali thi)
- attach with action hook : add_action('action hook ka naam','function ka naam');
- wp_enqueue_script( $handle, $src, $deps, $ver, $args )
    e.g. wp_enqueue_script('theme-slug-custom-script', get_template_directory_uri() . '/js/custom-script.js', array(), '1.0.0',true );
    $handle : Unique name/ID for this script  // Required, default: None
    $src : URL/path of the JavaScript file  // Required, default: None
    $deps : Other scripts this script depends on  // Optional, default: array()
    $ver : Version number of the script   // Optional, default: false
    $args :  whether to load in footer (true = Loads the script in the footer, otherwise in header)  // Optional, default: array() / false

- use wp_head() in header.php file and wp_footer() file in footer.php file to attach these action hooks there. ( wp_head() automatically attachs the changes/files/code that will show there & same for wp_footer() )

- common structure for reference : 
function your_function_name(){
    // what it does
}
add_action("hook_name", "method_name");

# v06 (show the pages content in page.php)

1. we need page.php template to show the content of pages (which we make in wordpress -> pages)
2. all the pages we make in wordpress along with thier content gets save in database in wp_posts table
    <?php
    if(have_posts()){
        while(have_posts()){
            the_post();
            ?>

            <?php
        }
    }
    ?>

    so in this code, have_posts() function checks ki jo page humne open kiya hai - uska page slug is there in wp_posts table or not 
    if it's there : while loop ke andar aa jata hai 

3. single post related methods
    the_title() = page title fetch or echo get_the_title()
    the_content() = page content or echo get_the_content()
    the_permalink() = page link or echo get_the_permalink()
- have_posts() checks whether a post exists.
- the_post() moves to that post and sets it as the current post.
- Then: the_title();
  means: Give me the title of the current post.
- Note : (WordPress alternative syntax - to make it visually reading otherwise same syntax as normal)
: = start the block
endwhile; = end the while block
endif; = end the if block

# v07 (enable menu option in admin panel and show it on frontend)

1. to show the menu in admin panel (register menu for theme) - register it in functions.php
    register_nav_menus(
        array(
            'primary-menu' => __('Primary Menu'),  // __() = WordPress translation function.
            'footer-menu' =>  __('Footer Menu')
        )
    );

- use add_action('init', 'my_theme_register_menus' ) action hook

2. __() = WordPress Translation Function

Purpose: Marks text so it can be translated into other languages.
Return: Gives you the translated text (or original text if no translation exists).

3. to call/show the menu in the frontend which we made in backend admin panel 
wp_nav_menu(array(
    'menu' => 'primary-menu', // same id we gave in register_nav_menus() in functions.php
    'container' => '',
    'items_wrap' => '<ul class='nav navbar header-menu'>%3$s</ul>' 
));

- WordPress uses %3$s as the placeholder where the actual menu <li> items should be inserted.

# v08 (custom logo upload functionality enable & show it on site)

1. to show the upload custom logo option in customise -> site identity
use add_theme_support method with after_setup_theme action hook in functions.php

function themename_custom_logo_setup(){
    $defaults = array(
        'height' => 50, 
        'width' => 177,
        'flex-height' => true,
        'flex-width'  => true
    );

    add_theme_support('custom-logo', $defaults);
}

add_action('after_setup_theme', 'themename_custom_logo_setup');

2. to show the custom logo in code

$img = get_bloginfo('template_url') . '/logo.png';
// Default/fallback logo URL

$custom_logo_id = get_theme_mod('custom_logo');
// Gets the Customizer setting value (here, the custom logo's Attachment ID)

$logo = wp_get_attachment_image_src($custom_logo_id, 'full');
// Returns an ARRAY containing the logo URL, width, height, etc.

if (has_custom_logo()) {
    $img = esc_url($logo[0]);
    // $logo[0] = image URL, so use it as the <img> source
} 

- get_theme_mod('custom_logo') → Gets a theme modification/Customizer value. Here it returns the custom logo's Attachment ID.
- wp_get_attachment_image_src($id, 'full') → Gets image information and returns an array:
    $logo[0] → Image URL
    $logo[1] → Width
    $logo[2] → Height
    $logo[3] → Whether the image is a resized/cropped version
- has_custom_logo() → Checks whether a custom logo has been set (true/false).
- esc_url() → Safely cleans/escapes a URL before outputting it in HTML.

Important note: Use theme modification key (custom_logo with an underscore _, not custom-logo)


# v09 (create post and display all posts on a page)

1. WP_Query() - executes our custom query
<?php 
    // the query
    $wp_all_query = new WP_Query(array('post_type'=>'post', 'post_status'=> 'publish'));  
 ?>

<?php

    if($wp_all_query -> have_posts()) : // check if we got published posts or not

?>

<ul>
    <!-- run the loop if we got published posts -->
    <?php
         while ($wp_all_query -> have_posts()) :
            $wp_all_query -> the_post(); // increment of while loop (next post)
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

2. wp saves all the posts, pages we create in dashboard in database in the wp_posts table
    we differentiate b/w posts and pages through post_type column in that table
    for posts - post , for pages - page (post_type value)


# v10 (create custom post type and display all posts ) 

1. to register custom post type on administator panel - register_post_type($firstparam, $secondparam);
- $firstparam : name of the post type in post type column in database
- #secondparam : array - which features our cpt will support & other info about cpt

2. to show the custom post type in the frontend - use same like above 
    method of WP_Query , just replace 
    $wp_all_query = new WP_Query(array('post_type'=>'post', 'post_status'=> 'publish'));  
    with 
    $wp_all_query = new WP_Query(array('post_type'=>'cars_data', 'post_status'=> 'publish'));  

# v11 (create custom sidebar for theme)

1. to register the widget functionality in admin panel : register_sidebar() method
- do_action( ‘widgets_init’ ) : Fires after all default WordPress widgets have been registered.
- register_sidebar() registers the sidebar which enables the widgets option in panel automatically. 

# v12 (display sidebar on theme page/ display defined widgets to page directly )

1. dynamic_sidebar([id]) to show all the widgets of that particular [id] we gave while registering that sidebar
2. is_active_sidebar([id]) checks whether the sidebar of that  particular [id] exists or not 
Note : 
- we are showing this in index.php
- if don't use is_active_sidebar() still the dynamic_sidebar() can handle the error(in case we pass wrong id)
but the html will still show on the page. if you don't want that - use if cond : is_active_sidebar()

<?php if(is_active_sidebar('sidebar-1')) : ?>
    <div id="secondary" class="sidebar-container" role="complementary">
        <div class="widget-area">
            <?php dynamic_sidebar('sidebar-1') ?>
        </div>
    </div>

<?php endif; ?>

3. we can also use the wordpress default native widgets directly in the page
e.g.
<?php get_search_form(); ?>


# v13 (new theme setup - custom-theme-2 )
- download any ready made theme, new theme setup, style.css setup

# v14 (new theme)
- Summary : header code shift in header.php, lang_attribute, charset, title with desc, 
call stylesheets & scripts in functions.php, footer code shift in footer.php

1. <?php echo language_attributes(); ?> : WordPress function that generates HTML attributes for the <html> tag, mainly specifying the language.

e.g.
<html lang="en">
<html <?php echo language_attributes(); ?> >

2. 
<meta charset="utf-8"> 
to 
<meta charset="<?php echo get_bloginfo('charset') ?>" >


# v15 

- Summary : add featured image support, show the featured image in frontend,
define custom image sizes for featured image, use those defined sizes in frontend,
showing posts in fixed layout 


1. to enable featured image support in posts 
add_theme_support("post-thumbnails");

2. to show the featured image in code
<?php the_post_thumbnail(); ?>

3. to set featured image sizes when we set the featured image
- wordpress function = add_image_size( $name, $width, $height,  $crop )
- $crop : Image cropping behavior. If false, the image will be scaled (default).
If true, image will be cropped to the specified dimensions using center positions.
- Note : these defined image sizes's images will be saved in uploads folder 

4. to use this in featured image code in frontend
<?php the_post_thumbnail($name); ?> // pass the above $name here

5. we can enable support for different post format type for posts
add_theme_support("post-formats", array("aside", "gallery", "link"));

- note : by default , post has standard post format type.

# v16 

- Summary : show post meta data like date, author, category

1. to get the link of the page where all the posts of that author is shown, use 
get_author_posts_url(get_the_author_meta('ID'));

2. to show the categories attached with post
the_category(); // gives in ul,li code

3. get_the_category() function gets all categories assigned to the current post.
- returns category objects
- so in the code, $categories = get_the_category(); 
is something like
$categories → [ Object, Object, Object ]  // array of objects

Note: 
- in PHP, -> operator is used to access a property or method of an object
$category->term_id   ,means : "Get the term_id property from the $category object."

- foreach ($categories as $category) {}   // Take each item from $categories and put that item into the variable $category.
$category is a temparory variable but the value stored inside that variable is an object

- For example, conceptually:

$category
    ↓
Category Object
    ├── term_id = 15
    ├── cat_name = Cars
    ├── slug = cars
    └── ...

4. get_category_link( $category_id )
e.g. get_category_link(15) // return URL like this https://example.com/category/cars/

- Note : You may wonder: here, get_category_link($category->term_id)

Why is it called term_id instead of category_id?
Because WordPress has a broader concept called a term.
Categories are one type of WordPress taxonomy term.

For example:

Taxonomy
│
├── Category
│      └── Cars
│
├── Tag
│      └── Featured
│
└── Custom Taxonomy
       └── SUV

A category is a type of term, so WordPress commonly identifies it using: term_id 


# v17 

- summary : concept of "content.php" & post thumbnail in details

1. Why do we need content.php?
- Keeps index.php clean – index.php mainly handles the WordPress Loop.
- Makes the theme modular – Post display code is separated into its own file.
- Makes the theme easier to maintain – Changes to post layout can be made in content.php.
- Avoids code repetition – The same post layout can be reused in different templates.
- Makes code reusable – content.php can be loaded using get_template_part().
- Allows different post layouts – We can create content-single.php, content-page.php, content-search.php, etc.
- Separates responsibilities – index.php handles the loop, while content.php handles how each post is displayed.

2. get_template_part( $slug, $name );
$slug → The main template file name.
$name → Optional. Specifies a more specific template variation.

e.g.
<?php get_template_part('content'); ?>  // wordpress loads content.php
<?php get_template_part('content', 'single'); ?>  // wordpress loads content-single.php

3. content files according to post format type name
content-link.php, content-aside.php, content-gallery.php

4. <?php get_template_part('content', get_post_format()); ?>

It checks the post format of the current post and returns its format name.

e.g. 

Current post
     ↓
get_post_format()
     ↓
   "aside"
     ↓
get_template_part('content', 'aside')
     ↓
content-aside.php

similarly,
get_post_format() : Video => video => content-video.php 
get_post_format() : Link => link => content-link.php 
default : Standard => content.php

Note: WordPress follows the template hierarchy for post formats. If the specific template file is not found, it falls back to the next available template:

content-{post-format}.php → content.php → index.php

- if you use, <?php get_template_parts("loop","index"); >
wordpress will first look for 
loop-index.php then loop.php in child & then
loop-index.php then loop.php in parent 

- to get the url of post thumbnail 
the_post_thumbnail_url('banner');
the_post_thumbnail_url('thumbnail');


# v18 
- Summary : concept of single.php, singular.php, single-{post-type}.php

1. single.php is to read the single post
2. you can use any file (single.php or singular.php) to show the single post 
3. WordPress follows the template hierarchy for posts (wordpress default only). If the specific template file is not found, it falls back to the next available template: single.php => singular.php => index.php

Note : single.php will not read custom post 
- you have to update the permalinks to make sure the new custom post type template to show in frontend.

4. to read custom post type pages => single-{post-type}.php

# v19
- Summary : concept of page.php, page-{page-id}.php, page-{page-slug}.php, custom templates for pages

1. page.php to is to read wordpress pages
2. WordPress follows the template hierarchy for pages (wordpress default only). If the specific template file is not found, it falls back to the next available template: page.php => index.php
3. if you want to assign specific page template for a page : 
use it's slug, for e.g. https://abc.com/hello
template : page-hello.php

Note : for page having id as permalink e.g. https://abc.com/hello/?page_id=32
template : page-32.php

4. to define the your templates in the wordpress pages (template dropdown option in admin panel)
   use this comment in your layout file

/*
 
Template Name: My custom template

*/

- Note : make sure you donot give space between "Template Name" and : 

# v20
- Summary : concept of front-page.php, home.php, index.php

1. home.php is the template used to display the blog posts index (your posts page that you set in Setting -> Reading)
e.g. whichever page you will set as posts page in Setting -> Reading will call this home.php
- wordpress calls home.php first if it's not there then it run index.php template

2. if we set any page (in setting -> Reading), the front page, then it calls the front-page.php

3. prirority order for showing the home page (if no specific setting is set in Setting -> Reading ):
front-page.php => home.php => index.php

Note : if no specific setting is set in Setting -> Reading then
front-page.php is both home & front page

# v21
- Summary : concept of "register_nav_menus" & "wp_nav_menu" (register & display of navigation menus)

1. few prop of wp_nav_menu
'theme_location'  => 'header_menu',      // Selects the registered menu location
'menu_class'      => 'owt_class',        // Adds a class to the <ul>
'menu_id'         => 'owt_id',           // Adds an ID to the <ul>
'container_class' => 'owt_parent_class', // Adds a class to the menu container
'container_id'    => 'owt_parent_id',    // Adds an ID to the menu container
'before'          => 'before anchor tag', // Content before the <a> tag
'link_before'     => 'anchor before text' // Content before the link text inside <a>

2. In WordPress, a filter is a way to modify or change data before WordPress uses or outputs it.
   WordPress creates some data => using FILTER => You modify the data => WordPress uses the modified data

e.g. add_filter("hook_name", "your_function_name");

nav_menu_css_class filter = css class to each li
nav_menu_link_attributes filter = any attributes to each anchor

# v22 
- Summary :  concept of "get_nav_menu_locations" & "get_nav_menu_items" in header.php
- use this method for complex menus

# v23
- Summary : About archive.php, types of archive, Category archive

1. An archive page in WordPress is an automatically generated page that lists a collection of posts grouped by category, tag, date, author, or custom post type
- if no archive.php page template is there, it will fallback to index.php
2. types of archive : [author, category, tag, year, month and day]
3. is_author(), is_category() are functions to check whether they are archive page of that particular type or not
4. For category pages, WordPress looks for templates in this order:
category-{slug}.php  →  category-{id}.php  →  category.php  →  archive.php  →  index.php

For e.g., for category-technology.php:
category-technology.php  →  category-5.php  →  category.php  →  archive.php  →  index.php

# v24
1. for author, the template priority order: 
author-{slug}.php → author-{id}.php → author.php → archive.php → index.php

2. for month, year, day archive : date.php (enke leye - https://example.com/2026/09/07/my-blog-post/)
- to check which archive among three use : is_day(), is_month(), is_year()

# v25 (search form and search list)
1. search form in header.php
2. put search form code in searchform.php & use it in code using get_search_form()
- you can use search form mulitple places using get_search_form() 

3. search.php is the template file used to display search results 


# v26 (sidebars)
1. sidebar provides an area to show different widgets like search bar, categories widget etc.. 
2. use register_sidebar for registering sidebar and enabling widgets with widgets_init action hook
    in functions.php
- the id's of the registered sidebars should be different
3. wordpress use this type of dynamic placholder (%1$s etc..) to replace dynamically the ids and class

# V27 (simple steps to make theme customizer panel - customize option in admin panel)

- pattern : section => setting => control

1. wp_head() and wp_footer() should be present in header.php and footer.php respectively for WordPress Customizer functionality and live preview to work properly.
2. To register the Customizer, in functions.php use:
- add_action('customize_register', 'custom_theme_customize_register'); 

customizer code explanation:
- add_section() → creates a section in Customizer.
- add_setting() → registers the value that WordPress will save.
- add_control() → creates the UI/input inside the Customizer.

3. To show the saved value in the frontend:
if 'type' => 'option' is there → use get_option('setting_id')
if 'type' => 'option' is not there  → use get_theme_mod('setting_id')

Example:
echo get_option('my_text_box_setting');

// Easy to remember:
// Section = Where
// Setting = What to save
// Control = How to enter


# V28 (image upload & color picker)
1. benefits of this customize panel:
- to provide visual editor to clients for editing who doesn't know coding or technical stuff
- easy to manage


# v29 (page not found i.e 404 page)
1. to handle the url which is not there, will handle them with 404 page 
file => 404.php, fallback if 404.php is not there => index.php

# v30 
1. what if you want different headers & footers in a website? 
get_header() => by default calls header.php  , get_header("about") => now it will call header-about.php
get_footer() =>  by default calls footer.php  , get_footer("home") => will call footer-home.php
get_sidebar() => by default calls sidebar.php , same logic for this

- Note : if for this get_header("about"), header-about.php is not there, fallback = header.php

# v31 (theme analysis of twentyseventeen theme)

1. the_post_pagination() for pagination 
2. page is also a post type in wordpress
so, 
get_template_part("template-parts/page/content" , "page");   // content-page.php

Exercise : Analayse different themes to improve your understanding.
