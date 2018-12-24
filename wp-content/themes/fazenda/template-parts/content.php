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
        $soustitre = chope_string_entre_deux_delimiteur('<h2>',  the_content(), '</h2>');
        $content = str_replace( $soustitre, '', the_content());
        $images = chope_string_entre_deux_delimiteur('<img',  the_content(), '</img>');
        $img1 = 'image : <img ' . $images.'</img></br>';
        //var_dump('image 1 : ' . $img1 );
        $content = str_replace( $img1, '', the_content());

        $img2 = chope_string_entre_deux_delimiteur('<img',  $content, '</img>');
        //var_dump('image 2 : <img ' . $img2.'</img> ^kkpkpkml' );
        $content = str_replace( $img2, '', $content);
        //var_dump($content);
        ?>

    </article><!-- #post-## -->
</article><!-- #post-## -->
