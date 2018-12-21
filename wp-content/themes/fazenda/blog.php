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
		<div class="moncercle"></div>
		</div>
		<?php echo do_shortcode('[searchandfilter fields="search,category,post_tag"]'); ?>
	</div>
</div>

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
    $nbpages = count($recent_posts)/4;
    $nombre = 0;

    foreach( $recent_posts as $recent ){


        if ($i%2 == 0)
        {
			$soustitre = chope_string_entre_deux_delimiteur('<h2>',  __($recent["post_excerpt"]), '</h2>');
            $content = str_replace( $soustitre, '', $recent["post_excerpt"]);
            echo '<li style="display: inline;">';
                echo '<div style="margin-bottom: 2%; display: flex; justify-content: space-between;">';

                    echo '<div class="contenu_philosophie"; >';
                        echo '<div class="titre_h2">';
							echo '<div class="cerclecontact">';
							echo '<div class="moncercle">';
							echo '</div>';
							echo '</div>';
                            echo '<h2><a href="' . get_permalink($recent["ID"]) . '">' .   ( __($recent["post_title"])).'</a></h2>  ';
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

                    echo '<div>';
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
            echo '<li style="display: inline;">';
                echo '<div style="margin-bottom: 2%; display: flex; justify-content: space-between;">';
                    echo '<div style="display: inline-flex;">';
                        echo get_the_post_thumbnail( __($recent["ID"]) );

                    echo '<div class="contenu_projet"; style="display: inline-flex; margin-left: 10%;">';
                        echo '<div >';
                           echo '<div class="titre_h2">';
								echo '<div class="cerclecontact">';
								echo '<div class="moncercle">';
								echo '</div>';
								echo '</div>';
                                echo '<h2><a href="' . get_permalink($recent["ID"]) . '">' .   ( __($recent["post_title"])).'</a></h2>  ';
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


