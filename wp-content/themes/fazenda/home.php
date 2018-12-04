<?php

get_header(); ?>

    <div id="primary" class="content-area">
        <main id="main" class="site-main" role="main">

            <h2>Recent Posts</h2>
            <ul>
                <?php
                $args = array( 'numberposts' => '1', 'tax_query' => array(
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

        </main><!-- .site-main -->
    </div><!-- .content-area -->

<?php get_sidebar(); ?>
<?php get_footer(); ?>
<?php