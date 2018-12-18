<?php

get_header(); global $post; $post_slug=$post->post_name;
?>


<div class="post_head">
    <div class="post_title">
        <?php  echo $post->post_title; ?>
    </div>
    <div>
        pobkfbglk,fhblk,gfhbok
    </div>
</div>
<div class="post_content">
    <?php echo apply_filters( 'the_content', $post->post_content ); ?>
</div>

<?php get_sidebar(); ?>
