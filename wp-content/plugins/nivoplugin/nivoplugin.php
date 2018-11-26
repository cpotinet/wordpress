<?php
/*
    Plugin Name: Nivo Plugin
    Description: Simple implementation of a nivo slideshow into WordPress
    Author: Cornado
    Version: 1.0
*/

function np_init() {
    $args = array(
        'public' => true,
        'label' => 'Nivo Images',
        'supports' => array(
            'title',
            'thumbnail',
            'editor'
        )
    );
    register_post_type('np_images', $args);

    add_image_size('np_widget', 180, 100, true);
    add_image_size('np_function', 600, 280, true);
}


add_theme_support( 'post-thumbnails' );

add_action('init', 'np_init');

add_action('wp_print_scripts', 'np_register_scripts');
add_action('wp_print_styles', 'np_register_styles');

function np_register_scripts() {
    if (!is_admin()) {
        // register
        wp_register_script('np_nivo-script', plugins_url('nivo-slider/jquery.nivo.slider.js', __FILE__), array( 'jquery' ));
        wp_register_script('np_script', plugins_url('script.js', __FILE__));

        // enqueue
        wp_enqueue_script('np_nivo-script');
        wp_enqueue_script('np_script');
    }
}

function np_register_styles() {
    // register
    wp_register_style('np_styles', plugins_url('nivo-slider/nivo-slider.css', __FILE__));
    wp_register_style('np_styles_theme', plugins_url('nivo-slider/themes/default/default.css', __FILE__));

    // enqueue
    wp_enqueue_style('np_styles');
    wp_enqueue_style('np_styles_theme');
}

function np_function($type='np_function') {
    $args = array(
        'post_type' => 'np_images',
        'posts_per_page' => 999
    );
    $result = '<div class="slider-wrapper theme-default">';
    $result .= '<div id="slider" class="nivoSlider">';

    //the loop
    $loop = get_posts($args);
    foreach($loop as $post){

        $the_url = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), $type);
        $result .='<img title="'.get_the_title().'" src="' . $the_url[0] . '" data-thumb="' . $the_url[0] . '" alt=""/>';
    }
    $result .= '</div>';
    $result .='<div id = "htmlcaption" class = "nivo-html-caption">';
    $result .='<strong>This</strong> is an example of a <em>HTML</em> caption with <a href = "#">a link</a>.';
    $result .='</div>';
    $result .='</div>';
    return $result;
}
?>