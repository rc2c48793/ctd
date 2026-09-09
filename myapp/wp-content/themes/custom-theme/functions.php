<?php

function mywebsite_styles()
{
    // stylesheets
    wp_enqueue_style('my-template-css', get_template_directory_uri() . '/css/styles.css');
    wp_enqueue_style('my-theme-css', get_stylesheet_uri());  // main style.css

}

function mywebsite_scripts()
{
    // scripts
    wp_enqueue_script('my-js', get_template_directory_uri() . '/js/scripts.js', array(), '1.1', false);

}

// attach with action hook : add_action('hook ka naam','function ka naam');
add_action('wp_enqueue_scripts', 'mywebsite_styles');
add_action('wp_enqueue_scripts', 'mywebsite_scripts');


function my_theme_register_menus()
{
    // menu register code
    register_nav_menus(
        array(
            'primary-menu' => __('Primary Menu'),  // __() = WordPress translation function.
            'footer-menu' => __('Footer Menu')
        )
    );
}

add_action('init', 'my_theme_register_menus');  // during theme activation register this  


function themename_custom_logo_setup()
{
    $defaults = array(
        'height' => 50,
        'width' => 177,
        'flex-height' => true,
        'flex-width' => true
    );

    add_theme_support('custom-logo', $defaults);
}

add_action('after_setup_theme', 'themename_custom_logo_setup');


// to register custom post type in wordpress
function register_my_projects()
{
    // code
    register_post_type(
        'cars_data',
        array(
            'labels' => array(
                'name' => __("Our Cars Data"),
                'singular_name' => __("custom_projects")
            ),
            'public' => true, // visibility of custom posts by default
            'show_in_nav_menus' => true, // show in appearance -> menus
            'has_archieve' => false, 
            'supports' => array('title', 'editor', 'author', 'commments', 'custom-fields') // array to tell which features this cpt will
            // support (by default it gets title, content)
        )
    );

}

add_action("init", "register_my_projects"); // init - on theme initilisation



function mytheme_widgets_init() {
	register_sidebar( array(
		'name'          => __( 'Primary Sidebar 1' ), // name of sidebar
		'id'            => 'my-sidebar-1', 
		'description'   => __( 'Widgets in this area will be shown under your single posts, before comments.', 'textdomain' ),
		'before_widget'	=> '<aside id="%1$s" class="widget %2$s">',
		'after_widget'	=> '</aside>',
		'before_title'	=> '<h1 class="widget-title">',
		'after_title'	=> '</h1>',
    ) );

	register_sidebar( array(
		'name'          => __( 'Primary Sidebar 2' ), // name of sidebar
		'id'            => 'my-sidebar-2',  
		'description'   => __( 'Widgets in this area will be shown under your single posts, before comments.', 'textdomain' ),
		'before_widget'	=> '<aside id="%1$s" class="widget %2$s">',
		'after_widget'	=> '</aside>',
		'before_title'	=> '<h1 class="widget-title">',
		'after_title'	=> '</h1>',
    ) );
}
add_action( 'widgets_init', 'mytheme_widgets_init' );



?>