<?php

get_header();

	if(have_posts()):?>

	<h2>Search Results For: <?php the_search_query(); ?></h2>

	<?php
		while(have_posts()):the_post();
	
	get_template_part('content', get_post_format());
	endwhile;

		else:
		echo "<p>NO CONTENT FOUND</p>";
 		endif;


get_footer();

?>