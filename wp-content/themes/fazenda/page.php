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
		
		?>	
		<div class="post_head">
			<div class="post_title">
				<?php  echo $post->post_title; ?>
			</div>
			<div>
				<!-- autres elem entete -->
			</div>
		</div>
		<div class="post_content">
			<?php echo $post->post_content; ?>
		</div>
	</main><!-- .site-main -->
</div><!-- .content-area -->
<?php get_sidebar(); ?>
<?php get_footer(); ?>
