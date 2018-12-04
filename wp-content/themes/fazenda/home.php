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
                    $soustitre = chope_string_entre_deux_delimiteur('<h2>',  __($recent["post_content"]), '</h2>');
                    $content = str_replace( $soustitre, '', $recent["post_content"]);

                    echo '<br/>';
                    echo $soustitre;
                    echo '<br/>';
                    echo $content;
                    echo '<br/>';
                    echo '<br/>';
                    echo '<div class="divButtonArticle">';
                    echo '<a href="' . get_permalink($recent["ID"]) . '" class="aButtonArticle" >+</a>  ';
                    echo '</div>';
                    echo '<br/>';
                    echo get_the_post_thumbnail( __($recent["ID"]) );
                    ?>

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