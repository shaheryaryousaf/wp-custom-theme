<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'custom_theme');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'cGMcdVtbsemci[IVU.+=zkwL;-rDEXW[hdq|rK`[- #YQ9tgn?v(~6NcKDo5+ZY3');
define('SECURE_AUTH_KEY',  'e:?ZjoKTms{=SK{0x)2=V(-Z&?o#.5}9kfvQ( C@R(?Vx^:`14v_]^LF5s;{55:`');
define('LOGGED_IN_KEY',    'yTfl2k_9;W`uz8&8&|l6-~(K!F{*I8(R-=b&zY`m;pDdFy/Wu`ujc_u, bn`Z*eU');
define('NONCE_KEY',        'Nf)/{);/)L6oLC%*.uU}d7yDpBDsKX%d:(rdrdy5U7AmtklweyfI>4x!z83~LOM5');
define('AUTH_SALT',        'nq5^X>XVpLg8;pQ/{mGxTN:>@lxG!Zo:LvVZMPn><Vp6_~Hh{.SEDXMc-V>X=@Wx');
define('SECURE_AUTH_SALT', '`I~N-GwK~ht1T-u(3yBPX_8V8o? K/Wd$YU/&3yrr_.7g#)5~xqXSOi8Ysr&=}ye');
define('LOGGED_IN_SALT',   'zEH,px;]!/|glnix]tgEOo=F,i,0(-!*fJ|SCFe!w5Dx<K)@R*umQWX,=`z+G!^*');
define('NONCE_SALT',       'i*/$fD2$v</SYOI/$),zjgl?.; kN>79j$7:,dpjkJusmDh%mT6vbvR;}Divx~Ic');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
