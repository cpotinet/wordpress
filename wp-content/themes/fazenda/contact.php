<?php

get_header(); global $post; $post_slug=$post->post_name;
?>


<div class="post_head">

    <div class="post_title">
        <h1 class="post_title">
            <?php  echo $post->post_title; ?>
        </h1>
    </div>

	<div class="">
		<div class="li_article">


            <div class="dim_article">
                <div>
                    <div class="titre_h2">
                        <h2>fazenda architecture</h2>
                    </div>

                    <p class="adresse">30 Rue du Lac</br>
                    69003 Lyon</br>
                    Tél. 06 70 31 03 94</p>
                </div>

		        <div>
                <img class="image_contact1" src="/wordpress/wp-content/themes/fazenda/img/contact_photo1.jpg" alt="contact" title="contact"/>
                </div>
	    </div>
    </div>

	<div class="li_article_2 dim_article_2">
		<div>
			<img class="image_contact2" src="/wordpress/wp-content/themes/fazenda/img/contact_photo2.jpg" alt="contact" title="contact"/>
		</div>
			
		<div>
			<div class="titre_h2">
				<h2>nous écrire</h2>
			</div>		
			
			<div>
				<?php echo do_shortcode('[contact-form-7 id="244" title="Formulaire de contact 1"]'); ?>
			</div>
		</div>
    </div>

	
</div>
<div class="post_content">
    <?php echo apply_filters( 'the_content', $post->post_content ); ?>
</div>

<?php get_sidebar(); ?>
