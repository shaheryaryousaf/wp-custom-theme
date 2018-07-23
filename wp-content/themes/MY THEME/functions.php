<?php 

function mytheme_resources()
{
	wp_enqueue_style('style', get_stylesheet_uri());
}

add_action('wp_enqueue_scripts', 'mytheme_resources');

//NAVIGATION MENUS
register_nav_menus(
	array(
			'primary'=>__('Primary Menu'),
			'footer'=>__('Footer Menu')
		));


//GET TOP ANCESTOR

function get_top_ancestor_id(){
	global $post;
	if($post->post_parent){
		$ancestors = array_reverse(get_post_ancestors($post->ID));
		return $ancestors[0];
	}
	return $post->ID;
}


//DOES PAGE HAS CHILDREN

function has_children(){
	global $post;
	$pages = get_pages('child_of='. $post->ID);
	return count($pages);
}


//ADD FEATURE IMAGE
//add_theme_support('post-thumbnails');
function add_images(){
	add_theme_support('post-thumbnails');
	add_image_size('small-thumbnail', 180, 120, true);
	add_image_size('banner-image', 920, 210, array('left', 'top'));

// THEME POST FORMATS
	add_theme_support('post-formats',array('aside','gallery','link'));

}
add_action('after_setup_theme','add_images');

//Custom Excerpt length
function custom_excerpt_length(){
	return 30;
}

add_filter('excerpt_length','custom_excerpt_length');


//ADD WIDGETS CODE

function OurWidgetsInit(){
	register_sidebar(array(
		'name' => 'Sidebar',
		'id' => 'sidebar1',
		'before_widget' => '<div class="widget-item">',
		'after_widget' =>'</div>',
		'before_title' => '<h3>',
		'after_title' => '</h3>'
	));

	register_sidebar(array(
		'name' => 'Footer Area 1',
		'id' => 'footer1',
		'before_widget' => '<div class="widget-item">',
		'after_widget' =>'</div>',
		'before_title' => '<h3>',
		'after_title' => '</h3>'
	));

	register_sidebar(array(
		'name' => 'Footer Area 2',
		'id' => 'footer2',
		'before_widget' => '<div class="widget-item">',
		'after_widget' =>'</div>',
		'before_title' => '<h3>',
		'after_title' => '</h3>'
	));

	register_sidebar(array(
		'name' => 'Footer Area 3',
		'id' => 'footer3',
		'before_widget' => '<div class="widget-item">',
		'after_widget' =>'</div>',
		'before_title' => '<h3>',
		'after_title' => '</h3>'
	));

	register_sidebar(array(
		'name' => 'Footer Area 4',
		'id' => 'footer4',
		'before_widget' => '<div class="widget-item">',
		'after_widget' =>'</div>',
		'before_title' => '<h3>',
		'after_title' => '</h3>'
	));
}

add_action('widgets_init','OurWidgetsInit');
?>