<?php
/**
 * The template part for displaying content
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */
?>

<article>
    <header class="entry-header">
        <?php the_title( '<h1 class="entry-title">', '</h1>' ); ?>
    </header><!-- .entry-header -->

        <?php
        $post = get_post();
        $i =0;

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

        if($i%2 == 0)
        {
            echo '<div>';
                echo '<div>';
                    echo '<div>';
                        $post->post_title;
                    echo '</div>';

                    echo '<div>';
                        $soustitre;
                    echo '</div>';

                    echo '<div>';
                        $post->post_excerpt;
                    echo '</div>';
                echo '</div>';

                echo '<div>';
                    echo '<div>';
                        echo get_the_post_thumbnail( __($post->ID) );
                    echo '</div>';
                echo '</div>';
            echo '</div>';
        }
        else
        {
            echo '<div>';

            echo '</div>';
        }



    $post = get_post();

    $post->post_excerpt();


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
    echo '</div>';
    echo '<div style="height:100%; width:100%; padding-top: 2%;">';
    echo $soustitre;
    echo '</div>';
    echo '<div>';
	echo $content;
    echo '</div>';
    echo '<div style="height:100%; width:100%">';
    echo '</div>';

    //echo $content;
    ?>
	</br>
    </article><!-- #post-## -->
</article><!-- #post-## -->