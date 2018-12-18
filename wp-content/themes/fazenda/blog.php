<?php
/**
 * The template for the content bottom widget areas on posts and pages
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */
?>
<h2>LES PROJETS</h2>
<?php echo do_shortcode('[searchandfilter fields="search,category,post_tag"]'); ?>
<ul>
    <?php
    $args = array( 'numberposts' => '10000', 'tax_query' => array(
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
    $i = 0;
    foreach( $recent_posts as $recent ){


        if ($i%2 == 0)
        {
            $soustitre = chope_string_entre_deux_delimiteur('<h2>',  __($recent["post_excerpt"]), '</h2>');
            $content = str_replace( $soustitre, '', $recent["post_excerpt"]);
            echo '<li style="display: inline; width: 45%;">';
                echo '<div style="margin-bottom: 2%; display: flex;">';

                    echo '<div style="width:45%; display:inline-block">';
                        echo '<div>';
                            echo '<a href="' . get_permalink($recent["ID"]) . '">' .   ( __($recent["post_title"])).'</a>  ';
                        echo '</div>';

                        echo '<div>';
                            echo $soustitre;
                        echo '</div>';

                        echo '<div>';
                            echo $content;
                        echo '</div>';
                        ?>
                        <div class="article_bouton">
                            <div class="divButtonArticle">
                                <?php echo '<a href="' . get_permalink($recent["ID"]) . '" class="aButtonArticle" >+</a>  '; ?>
                            </div>
                            <?php echo ''; ?>
                        </div>
                        <?php

                    echo '</div>';

                    echo '<div style="width:40%; display: inline-block">';
                        echo get_the_post_thumbnail( __($recent["ID"]) );
                    echo '</div>';

                echo '</div>';
            echo '</li>';
            $i = $i+1;
        }
        else
        {
            $soustitre = chope_string_entre_deux_delimiteur('<h2>',  __($recent["post_excerpt"]), '</h2>');
            $content = str_replace( $soustitre, '', $recent["post_excerpt"]);
            echo '<li style="display: inline; width: 45%;">';
                echo '<div style="margin-bottom: 2%; display: flex;">';
                    echo '<div style="width: 84%; display: inline-flex;">';
                        echo get_the_post_thumbnail( __($recent["ID"]) );
                    echo '</div>';

                    echo '<div style="display: inline-flex; margin-left: 2%; width: 100%;">';
                        echo '<div >';
                            echo '<div>';
                                echo '<a href="' . get_permalink($recent["ID"]) . '">' .   ( __($recent["post_title"])).'</a>  ';
                            echo '</div>';

                            echo '<div>';
                                echo $soustitre;
                            echo '</div>';

                            echo '<div style=" display:inline-block">';
                                echo $content;
                            echo '</div>';
                            ?>
                            <div class="article_bouton">
                                <div class="divButtonArticle">
                                    <?php echo '<a href="' . get_permalink($recent["ID"]) . '" class="aButtonArticle" >+</a>  '; ?>
                                </div>
                                <?php echo ''; ?>
                            </div>
                            <?php
                        echo '</div>';
                    echo '</div>';
                echo '</div>';
            echo '</li>';

            $i = $i+1;
        }

        ?>
        <?php
    }
    ?>
</ul>