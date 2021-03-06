<?php
/**
 * The template for displaying pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages and that
 * other "pages" on your WordPress site will use a different template.
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */

get_header(); ?>

<div id="primary" class="content-area">
	<main id="main" class="site-main" role="main">
        <?php global $post; $post_slug=$post->post_name;
        if($post_slug == 'blog')
        {
            get_action( 'blog' );
        }


        if($post->ID == 106) {
            get_action('contact');
        }
        if($post->ID == 3) {
            get_action('mentions_legales');

        }
        if($post->ID == 2) {
            get_action('agence');


		?>
        <?php } ?>
	</main><!-- .site-main -->
</div><!-- .content-area -->
<?php get_sidebar(); ?>
<?php get_footer(); ?>
