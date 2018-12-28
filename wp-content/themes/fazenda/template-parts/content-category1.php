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


/*
    $post = get_post();


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

    //echo $content;*/
    ?>
</article><!-- #post-## -->