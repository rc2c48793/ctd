<!DOCTYPE html>
<html <?php echo language_attributes(); ?>>

<head>
  <meta charset="<?php echo get_bloginfo("charset"); ?>" />
  <title> <?php echo get_bloginfo('name') . " | " . get_bloginfo('description'); ?> </title>

  <!--Meta For No Index-->
  <meta name="robots" content="noindex, Nofollow, Noimageindex">

  <!-- mobile responsive meta -->
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

  <!--Favicon-->
  <link rel="shortcut icon" href="images/favicon.svg" type="image/x-icon" />
  <link rel="icon" href="images/favicon.svg" type="image/x-icon" />

  <?php wp_head(); ?>

</head>

<body>

  <!-- Navbar Start -->
  <nav class="main-nav navbar navbar-expand-lg">
    <h2>about header</h2>
    <div class="container">
      <!-- Logo -->
      <a class="navbar-brand" href="index.html">
        <img class="logo-main" src="<?php echo get_template_directory_uri() . '/images/logo.svg' ?>" alt="logo" />
      </a>
      <!-- Toogle Button -->
      <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#mainNav">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <div class="collapse navbar-collapse nav-list" id="mainNav">


        <!-- Navigation Links -->
        <?php
        /*
        if (has_nav_menu('header_menu')) {
          wp_nav_menu(array(
            'theme_location' => 'header_menu',
            'menu_class' => 'owt_class',
            'menu_id' => 'owt_id',
            'container_class' => 'owt_parent_class',
            'container_id' => 'owt_parent_id',
            'before' => 'before anchor tag',
            'link_before' => 'anchor before text'
          ));
        }  */

        // v22
        $locationDetails = get_nav_menu_locations(); // Returns an array of registered menu locations and the menu ID assigned to each location
        // print_r($locationDetails);   // Array ( [header_menu] => 3 [footer_menu] => 3 )
        
        $menuID = $locationDetails['header_menu'];
        $primaryMenuItems = wp_get_nav_menu_items($menuID);

        // print_r($primaryMenuItems); // see with ctrl + U for better visualisation
        
        ?>

        <ul class="style-1 style-2">
          <?php
          // get menu items from this $primary_menu_items array
          foreach ($primaryMenuItems as $key => $value) {

            ?>

            <li>
              <a href="<?php echo $value->url; ?>" class="style-4">
                <?php echo $value->title; ?>
              </a>
            </li>

            <?php
          }
          ?>
        </ul>

        <!-- Social Link -->
        <ul class="main-nav-social">
          <li>
            <a href="#"><i class="fa fa-facebook"></i></a>
          </li>
          <li>
            <a href="#"><i class="fa fa-twitter"></i></a>
          </li>
          <li>
            <a href="#"><i class="fa fa-instagram"></i></a>
          </li>
        </ul>
      </div>
      <a href="" style="margin-bottom:20px;padding: 10px 20px;background-color: <?php echo get_option("my_colorpicker_id"); ?>;color:white; ">Book
        Now</a>
    </div>

  </nav>
  <!-- Navbar End -->


  <?php
  get_search_form();
  ?>