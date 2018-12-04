<?php
/**
 * The template for the content bottom widget areas on posts and pages
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */
?>
<h2>Recent Posts</h2>
            <ul>
                <?php
                $args = array( 'numberposts' => '10', 'tax_query' => array(
                    array(
                        'taxonomy' => 'post_format',
                        'field' => 'slug',
                        'terms' => 'post-format-aside',
                        'operator' => 'NOT IN'
                    ),
                    array(
                        'taxonomy' => 'post_format',
                        'field' => 'slug',
                        'terms' => 'post-format-image',
                        'operator' => 'NOT IN'
                    )
                ) );
                $recent_posts = wp_get_recent_posts( $args );
                foreach( $recent_posts as $recent ){
                    echo '<li><a href="' . get_permalink($recent["ID"]) . '">' .   ( __($recent["post_title"])).'</a>  ';
                    //echo '<a href="' . get_permalink($recent["ID"]) . '">' .   ( __($recent["post_content"])).'</a> </li> ';
                    //echo '<img src="' . ( __($recent["post_guid"])) . '"> </li> ';
                    //echo ( __($recent["post_guid"]));
                    //Default WordPress
                    //var_dump($recent);
                    ?>

                    <?php get_the_post_thumbnail($recent["ID"]); var_dump(get_the_post_thumbnail( __($recent["ID"]) )); ?>
                    <?php echo wp_get_attachment_image( __($recent["ID"]) );  ?>

                <?php
                }
                wp_reset_query();
                ?>
</ul>
