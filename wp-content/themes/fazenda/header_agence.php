<?php
/**
 * The template for displaying the header
 *
 * Displays all of the head element and everything up until the "site-content" div.
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */

?><!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js">
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/wordpress/wp-content/themes/fazenda/css/normalize.css" type="text/css" media="all">
	<link rel="profile" href="http://gmpg.org/xfn/11">
	<?php if ( is_singular() && pings_open( get_queried_object() ) ) : ?>
	<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
	<?php endif; ?>
	<?php wp_head(); ?>


				
</head>

<body <?php body_class(); ?>>
<div id="page" class="site">
	<div class="site-inner">
		<a class="skip-link screen-reader-text" href="#content"><?php _e( 'Skip to content', 'twentysixteen' ); ?></a>

        <?php echo do_shortcode('[metaslider id="190"]'); ?>

        <div>
            <a class='insta' href='/wordpress/'><span></span></a>
            <a class='linkdin' href='/wordpress/'><span></span></a>
        </div>

		<header id="masthead" class="site-header mainNavMenu" role="banner">
            <?php
                if ( has_nav_menu( 'primary' ) || has_nav_menu( 'social' ) || is_active_sidebar( 'sidebar-1' )  ) : ?>
                <div id="secondary" class="secondary">

                    <?php if ( has_nav_menu( 'primary' ) ) : ?>
                        <nav id="site-navigation" class="main-navigation" role="navigation">
                            <?php
                            // Primary navigation menu.
                            wp_nav_menu( array(
                                'menu_class'     => 'nav-menu',
                                'theme_location' => 'primary',
                            ) );
                            ?>
                        </nav><!-- .main-navigation -->
                    <?php endif; ?>
                </div><!-- .secondary -->
            <?php endif; ?>
		</header><!-- .site-header -->

		<div id="content" class="site-content">
