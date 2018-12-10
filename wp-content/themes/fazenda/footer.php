<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */
?>

</div><!-- .site-content -->
        <?php global $post; $post_slug=$post->post_name;
        if($post_slug == 'mentions-legales')
        {
            echo '<footer id="colophon" class="site-footer" role="contentinfo">';
            echo '<div class="site-info">';
            echo 'Copyright 2018 - Tous droits réservés';
            echo '</div>';
            echo '</footer>';
        }
        else{
        ?>

		<footer id="colophon" class="site-footer" role="contentinfo">
            <div class="site-info">
                <a href="/wordpress/mentions-legales" class="policy-mentions-legales">mention légales - </a>
				<?php echo 'Copyright 2018 - Tous droits réservés'; ?>
			</div><!-- .site-info -->

            <?php
            }
            ?>
		</footer><!-- .site-footer -->
	</div><!-- .site-inner -->
</div><!-- .site -->

<?php wp_footer(); ?>
</body>
</html>
