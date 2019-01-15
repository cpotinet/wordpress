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

                            <h2>la philosophie</h2>
                        </div>

                        <h3>Sous-titre</h3>

                        <p class="contenu_philosophie">Hinc ille commotus ut iniusta perferens et indigna praefecti custodiam protectoribus mandaverat fidis. quo conperto Montius tunc quaestor acer quidem sed ad lenitatem propensior, consulens in commune advocatos palatinarum primos scholarum adlocutus est mollius docens nec decere haec fieri nec prodesse addensque vocis obiurgatorio sonu quod si id placeret, post statuas Constantii deiectas super adimenda vita praefecto conveniet securius cogitari.</p>
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
					<h2>l'équipe</h2>
				</div>		

				<div class="contenu_philosophie">
					<h3>Caroline Ginon</h3>
					<p>Hinc ille commotus ut iniusta perferens et indigna praefecti custodiam protectoribus mandaverat fidis. quo conperto Montius tunc quaestor acer quidem sed ad lenitatem.</p>
					<h3>Caroline Ginon</h3>
					<p>Hinc ille commotus ut iniusta perferens et indigna praefecti custodiam protectoribus mandaverat fidis. quo conperto Montius tunc quaestor acer quidem sed ad lenitatem.</p>
					<h3>Caroline Ginon</h3>
					<p>Hinc ille commotus ut iniusta perferens et indigna praefecti custodiam protectoribus mandaverat fidis. quo conperto Montius tunc quaestor acer quidem sed ad lenitatem.</p>
					<h3>Caroline Ginon</h3>
					<p>Hinc ille commotus ut iniusta perferens et indigna praefecti custodiam protectoribus mandaverat fidis. quo conperto Montius tunc quaestor acer quidem sed ad lenitatem.</p>
				</div>
			</div>
		</div>


	</div>

<div class="post_content">
    <?php echo apply_filters( 'the_content', $post->post_content ); ?>
</div>

<?php get_sidebar(); ?>
