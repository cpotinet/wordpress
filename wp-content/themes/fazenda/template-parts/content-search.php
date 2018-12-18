<?php
/**
 * The template part for displaying results in search pages
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */
?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
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
?>

</article><!-- #post-## -->

