<?php
/**
 * The template part for displaying single posts
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */
?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?> style="width: 99%">
	<header class="">
        <?php the_title( '<h2>', '</h2>' );?>

    </header><!-- .entry-header -->

    <div class="parentBouton_retour_blog">
        <div class="enfantBouton_retour_blog">
            <?php echo '<div class="subtitle-list-style-single">
                <a href="' . "'/wordpress/blog/'" . '" class="abouton_retour_blog">retour à la liste des articles</a>  ';?>
        </div>
    </div>
    </div>

    <?php
    $post = get_post();
    $content = $post->post_content;
    $shortcodes = chope_string_entre_deux_delimiteur('[metaslider',  $content, ']');
    //var_dump($shortcodes);
    $diapo1 = '[metaslider'. $shortcodes .']' ;
    //var_dump($diapo1);
    $content = str_replace( $diapo1, '', $content);
    $diapo2 = '[metaslider'. chope_string_entre_deux_delimiteur('[metaslider',  $content, ']').']';
    $content = str_replace( $diapo2, '', $content);
    //var_dump($content);
    //var_dump('content : ' . $content);
    //var_dump($post->post_content);
    $soustitre = chope_string_entre_deux_delimiteur('<h2>',  $content, '</h2>');
    $content = str_replace( $soustitre, '', $content);
    $images = chope_string_entre_deux_delimiteur('<img',  $content, '/>');
    $img1 = '<img' . $images.'/>';
    //var_dump('soustitre : ' . $soustitre);
    //var_dump('image 1 : ' . $img1 );
    $content = str_replace( $img1, '', $content);
    //var_dump($img1);
    $img2 = chope_string_entre_deux_delimiteur('<img',  $content, '/>');
    //var_dump('<img' . $img2.'</img>' );
    $content = str_replace( $img2, '', $content);
    //var_dump($content);
    $explode = explode('&nbsp;', $content );


    echo '<div style="height:100%; width:100%">';
    echo do_shortcode($diapo1);
    echo '</div>';
    echo '<div style="height:100%; width:100%; padding-top: 2%;">';
    echo $soustitre;
    echo '</div>';
    echo '<div>';
        echo '<div>';
                echo '<div style="padding-bottom: 1rem;">';
                    echo $explode[0];
                echo '</div>';

                echo '<div>';
                    echo '<div class="single-article-img-container">';
                        echo '<div>';
                        echo  '<img ' . $img1.'</img>' ;
                        echo '</div>';
                        echo '<div style="display: inline-block; padding-left: 2rem;">';
                        echo '<img ' . $img2.'</img>' ;
                        echo '</div>';
                    echo '</div>';
                echo '</div>';


            echo '<div style="padding-bottom: 2%;">';
            echo $explode[1];
            echo '</div>';
        echo '</div>';

    echo '</div>';
    echo '<div style="height:100%; width:100%">';
    echo do_shortcode($diapo2);


    //echo $content;
    ?>
    <?php echo '</div>'; ?>
</article><!-- #post-## -->
