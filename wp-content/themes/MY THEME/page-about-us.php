<?php

get_header();

	if(have_posts()):
		while(have_posts()):the_post();
	?>
	<article class="post">
		<div class="column-container clearfix">
			<div class="heading-column">
				<h1><?php the_title(); ?></h1>
			</div>

			<div class="text-column">
				<?php the_content(); ?>
			</div>
		</div>
	</article>
	<?php	endwhile;

		else:
		echo "<p>NO CONTENT FOUND</p>";
 		endif;


get_footer();

?>