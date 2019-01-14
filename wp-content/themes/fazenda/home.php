<?php

get_header(); ?>

    <div id="primary" class="content-area">
        <main id="main" class="site-main" role="main">

            <ul class="tab_article" >
                <?php
                //récupération article récents (numbersposts => 1
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

                //Affichage du postes
                foreach( $recent_posts as $recent ){

                    //var_dump($recent);
                    //die();
                    $soustitre = chope_string_entre_deux_delimiteur('<h2>',  __($recent["post_excerpt"]), '</h2>');
                    $content = str_replace( $soustitre, '', $recent["post_excerpt"]);
                    ?>

                        <div class="article_flex">
							<div class="article_entier">
							<div class="article_ecrit">
								<div >
									<h2>
										<div class="article_titre"  style="display: inline-block">

										</div>
										<?php echo '<a href="' . get_permalink($recent["ID"]) . '" class="article_lien" >' .   ( __($recent["post_title"])).'</a>  '; ?>
									</h2>
								</div>
									<h3>
										<?php echo $soustitre; ?>
									</h3>
									<div>
										<?php echo $content; ?>
									</div>



									<div class="article_bouton">
										<div class="divButtonArticle">
											<?php echo '<a href="' . get_permalink($recent["ID"]) . '" class="aButtonArticle" >+</a>  '; ?>
										</div>
										<?php echo ''; ?>
									</div>
							</div>
                        </div>
                        <div class="article_image">
                            <?php echo get_the_post_thumbnail( __($recent["ID"]) ); ?>
                        </div>
					</div>

                    <?php
                    /*
                    echo '<div>';
                    echo '<li><a href="' . get_permalink($recent["ID"]) . '">' .   ( __($recent["post_title"])).'</a>  ';


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
                    echo '</div>';
                    */
                    ?>

                    <?php
                }
                wp_reset_query();
                ?>
            </ul>

            <div>
                <div class="titreinsta"; style="width: 100%; display:inline-block;">
                    <div style="display: inline-block">
                        <h2>Fazenda sur Instagram </h2>
                    </div>
                </div>

                <div class="fil_instagram">
                    <?php echo do_shortcode('[instagram-feed]'); ?>
                </div>
            </div>
        </main><!-- .site-main -->
    </div><!-- .content-area -->

<?php get_sidebar(); ?>
<?php get_footer(); ?>