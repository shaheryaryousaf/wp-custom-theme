<?php

/*
Template Name: New Template
*/

get_header();

	if(have_posts()):
		while(have_posts()):the_post();
	?>
	<article class="post">
		<h1><?php the_title(); ?></h1>

		<div class="info-box">
			<h4>Disclaimer Title</h4>
			<p>Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum </p>
		</div>

		<?php the_content(); ?>
	</article>
	<?php	endwhile;

		else:
		echo "<p>NO CONTENT FOUND</p>";
 		endif;


get_footer();

?>