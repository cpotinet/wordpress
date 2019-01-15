<?php
/**
 * The template for the content bottom widget areas on posts and pages
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */
?>
<div class="titre_projets">
	<h1>LES PROJETS</h1>
	<div class="filtre_recherche">
		<div class="hauteurcercle">
		<div class="moncercle responsivecercle"></div>
		</div>
		<?php echo do_shortcode('[searchandfilter fields="search,category,post_tag"]'); ?>
	</div>
</div>

<ul class="position_blog">
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
    $nbpages = count($recent_posts)/4;
    $nombre = 0;

    foreach( $recent_posts as $recent ){


        if ($i%2 == 0)
        {
			$soustitre = chope_string_entre_deux_delimiteur('<h2>',  __($recent["post_excerpt"]), '</h2>');
            $content = str_replace( $soustitre, '', $recent["post_excerpt"]);
            echo '<li style="" class="li_article">';
                echo '<div style="" class="dim_article taille_article">';
                    echo '<div class="contenu_philosophie"; >';
                        echo '<div class="titre_h2">';
							echo '<div class="cerclecontact">';
							echo '</div>';
                            echo '<h2 class="titleArticle">
                                    <a href="' . get_permalink($recent["ID"]) . '">' .   ( __($recent["post_title"])).'</a>
                                </h2>  ';
                            echo '</div>';
                        echo '<h3>';
                            echo $soustitre;
                        echo '</h3>';

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

                    echo '<div class="imageblog">';
            echo get_the_post_thumbnail( __($recent["ID"]),'large', array( 'class' => 'jesuisbibi' ) );
                    echo '</div>';

                echo '</div>';
            echo '</li>';
            $i = $i+1;
        }
        else
        {
            $soustitre = chope_string_entre_deux_delimiteur('<h2>',  __($recent["post_excerpt"]), '</h2>');
            $content = str_replace( $soustitre, '', $recent["post_excerpt"]);
            echo '<li style="display: inline;" class="li_article_2">';
                echo '<div class="dim_article_2 taille_article_2" >';
                    echo '<div>';
                        echo get_the_post_thumbnail( __($recent["ID"]),'large', array( 'class' => 'jesuisbibi2' ) );
                    echo '</div>';
                echo '<div class="contenu_projet titre_2">';
                       echo '<div class="titre_h2_2">';
                            echo '<div class="cerclecontact">';
                            echo '</div>';
                            echo '<h2 class="titleArticle">
                                        <a href="' . get_permalink($recent["ID"]) . '">' .   ( __($recent["post_title"])).'</a>
                                  </h2>  ';
                        echo '</div>';
                        echo '<div>';
                            echo $soustitre;
                        echo '</div>';

                        echo '<div style=" display:inline-block">';
                            echo $content;
                        echo '</div>';
                        ?>
                        <div class="article_bouton_2">
                            <div class="divButtonArticle">
                                <?php echo '<a href="' . get_permalink($recent["ID"]) . '" class="aButtonArticle" >+</a>  '; ?>
                            </div>
                            <?php echo ''; ?>
                        </div>
                        <?php
                echo '</div>';
            echo '</li>';

            $i = $i+1;
        }


        ?>


        <?php
    }
    ?>

    <?php


    //partie test
    /*
    global $wp_query;

    $args = array(
        'posts_per_page' => 4,
        'post_type' => 'post',
        'paged' => '',
    );

    $args = array_merge( $wp_query->query, array( 'posts_per_page' => 6 ) );
    $big = 999999999;

    echo paginate_links( array( // Plus d'info sur les arguments possibles : https://codex.wordpress.org/Function_Reference/paginate_links
        'base' => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
        'format' => '?paged=%#%',
        'current' => max( 1, get_query_var('paged') ),
        'total' => $nbpages,
        'posts_per_page' => $args) );
    */
    //fin partie test

?>
</ul>

<?php
/*
global $wp_query;

$args = array(
    'posts_per_page' => 4,
    'post_type' => 'post',
    'paged' => '',
);

$args = array_merge( $wp_query->query, array( 'posts_per_page' => 4 ) );
$big = 999999999;

echo paginate_links( array( // Plus d'info sur les arguments possibles : https://codex.wordpress.org/Function_Reference/paginate_links
    'base' => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
    'format' => '?paged=%#%',
    'current' => max( 1, get_query_var('paged') ),
    'total' => $nbpages,
    'posts_per_page' => 4) );
*/
?>



