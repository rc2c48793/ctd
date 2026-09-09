<?php

// add styles and script files
function custom_theme_two_scripts()
{

    // 1. Stylesheets
    wp_enqueue_style('theme-style', get_template_directory_uri() . '/css/style.css'); // custom stylesheet
    wp_enqueue_style('main-style', get_stylesheet_uri());

    // 2. Google Maps API (Loaded first so your gmap.js can use it)
    wp_enqueue_script('google-maps', 'https://maps.googleapis.com/maps/api/js?key=AIzaSyC9rV6yesIygoVKTD6QLf_iCa9eiIIHqZ0&libraries=geometry', array(), null, true);

    // 3. Vendor Scripts (Using your exact file paths)
    wp_enqueue_script('bootstrap-js', get_template_directory_uri() . '/vendor/bootstrap/bootstrap.min.js', array('jquery'), null, true);
    wp_enqueue_script('slick-js', get_template_directory_uri() . '/vendor/slick/slick.min.js', array('jquery'), null, true);
    wp_enqueue_script('gmap-custom-js', get_template_directory_uri() . '/vendor/g-map/gmap.js', array('jquery', 'google-maps'), null, true);

    // 4. Main Custom Script
    wp_enqueue_script('main-script', get_template_directory_uri() . '/js/script.js', array('jquery'), null, true);

}
add_action('wp_enqueue_scripts', 'custom_theme_two_scripts');


// add theme supports
function custom_theme_two_supports()
{
    add_theme_support("post-thumbnails");

    // add image size
    add_image_size('thumbnail', 150, 150, true);
    add_image_size('banner-image', 700, 350, true);


    // post formats
    add_theme_support("post-formats", array("aside", "gallery", "link"));
}

add_action("after_setup_theme", "custom_theme_two_supports");


// custom post type 
function custom_theme_init()
{
    $args = array(
        'public' => true,
        'label' => 'Projects'
    );

    register_post_type('project', $args);  // single-project.php 
}

add_action('init', 'custom_theme_init');

// add menus support and Menu location options feature in panel (v20)
function custom_theme_menus()
{
    register_nav_menus(
        array(
            "header_menu" => "header menu",
            "footer_menu" => "footer menu"
        )
    );
}

add_action("init", "custom_theme_menus");


// adding filter to wordpress menu  (v21)
add_filter("nav_menu_css_class", "custom_theme_each_li_class", 10, 4); // 10 - priority, 4 - no of arguments
function custom_theme_each_li_class($classes, $item, $args, $depth)
{
    // $classes is an array containing the CSS classes that WordPress has already created for that <li>
    // [] means add a new item to the end of the array
    $classes[] = "class-rahul";
    return $classes;
}

add_filter("nav_menu_link_attributes", "custom_each_anchor_att");
function custom_each_anchor_att($attr)
{
    $attr['class'] = 'owt-anchor-class'; // sets/replaces the class attribute
    // $attr['class'] = ($attr['class'] ?? '') . ' owt-anchor-class'; // adds your class while keeping existing classes
    $attr['title'] = 'My Link';
    return $attr;
}


// v26 
function wpdocs_theme_slug_widgets_init()
{
    register_sidebar(array(
        'name' => "right sidebar",
        'id' => "sidebar-1",
        'description' => "this is right sidebar",
        'before_widget' => '<li id="%1$s" class="widget %2$s" data-id="my-widget">',
        'after_widget' => '</li>',
        'before_title' => '<h2 class="widgettitle">',
        'after_title' => '</h2>',
    ));

    register_sidebar(array(
        'name' => "left sidebar",
        'id' => "sidebar-2",
        'description' => "this is left sidebar",
        'before_widget' => '<li id="%1$s" class="widget %2$s" data-id="rahul>',
        'after_widget' => '</li>',
        'before_title' => '<h2 class="widgettitle">',
        'after_title' => '</h2>',
    ));
}
add_action('widgets_init', 'wpdocs_theme_slug_widgets_init');


// Theme Customizer panel register function
function custom_theme_customize_register($wp_customize)
{
    // $wp_customize -> WP_Customize_Manager object provided by WordPress

    // STEP 1: Add/register a new section
    $wp_customize->add_section('my_copyright_sec_id', array(
        'title' => 'Custom Section Title',
        'description' => 'Custom Section description',
        'priority' => 120,
    ));

    // STEP 2: Add a setting to save the value
    $wp_customize->add_setting('my_copyright_txt_id', array(
        'default' => '@ copyright 2026',
        'capability' => 'edit_theme_options',
        'type' => 'option',
        'sanitize_callback' => 'sanitize_text_field',
    ));

    // STEP 3: Add a control (UI) inside the Customizer
    $wp_customize->add_control('my_copyright_control_id', array(
        'label' => 'Enter your Copyright text',
        'section' => 'my_copyright_sec_id', // Section where control will appear
        'settings' => 'my_copyright_txt_id', // Setting this control uses
        'type' => 'text', // default type : text
    ));


    // =========== Footer link text ===========
    $wp_customize->add_setting('my_footer_link_txt', array(
        'capability' => 'edit_theme_options',
        'type' => 'option',
    ));

    $wp_customize->add_control('my_footer_link', array(
        'label' => 'Enter your Footer Link text',
        'section' => 'my_copyright_sec_id',
        'settings' => 'my_footer_link_txt',
        'type' => 'text',
    ));

    // =========== Footer pages dropdown (shown in footer.php) ===========
    $wp_customize->add_setting('my_footer_pages_dropdown', array(
        'capability' => 'edit_theme_options',
        'type' => 'option',
    ));

    $wp_customize->add_control('my_footer_pages_dropdown_ctrl', array(
        'label' => 'Select the page you want to link in footer link text',
        'section' => 'my_copyright_sec_id',
        'settings' => 'my_footer_pages_dropdown',
        'type' => 'dropdown-pages',
    ));

    //  ====== Image Upload (shown in sidebar.php) ===========

    $wp_customize->add_setting('my_image_uploader', array(
        'default' => get_bloginfo('template_url') . '/images/author.png',
        'capability' => 'edit_theme_options',
        'type' => 'option',

    ));

    $wp_customize->add_control(new WP_Customize_Image_Control($wp_customize, 'image_upload_test', array(
        'label' => 'Upload the image',
        'section' => 'my_copyright_sec_id',
        'settings' => 'my_image_uploader',
    )));

    //  ============ Color Picker (shown in header.php button) ============   
    $wp_customize->add_setting('my_colorpicker_id', array(
        'default' => '#000',
        'sanitize_callback' => 'sanitize_hex_color',
        'capability' => 'edit_theme_options',
        'type' => 'option',

    ));

    $wp_customize->add_control(new WP_Customize_Color_Control($wp_customize, 'link_color', array(
        'label' => "Book now button background color",
        'section' => 'my_copyright_sec_id',
        'settings' => 'my_colorpicker_id',
    )));


}

// Register the Customizer function
add_action('customize_register', 'custom_theme_customize_register');



?>