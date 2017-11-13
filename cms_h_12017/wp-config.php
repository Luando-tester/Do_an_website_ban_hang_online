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
define('DB_NAME', 'wordpress');

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
define('AUTH_KEY',         'fUZ`k#GSB27=M)p8b,Q>Xcos`ppBT^p8p_dtXbvx^l-n[-.C6eC&R#73]h*)jXhV');
define('SECURE_AUTH_KEY',  'Vp&+F0d.R5189@uCY!|-d6aYb!9;e<B 38`x{ /H{-L#r!}rlf>YrSDy.~Oy X.U');
define('LOGGED_IN_KEY',    'oDKu+yjE4tZh=y3GvHF9qEs2<Tyh.3w(p{FG|G$|I8Y@xV XUk>KxJZth!1&^D`a');
define('NONCE_KEY',        '? 8EcaUa>P@_PglL0gAR?:YK7!{H>{.MN*v>.q/Q<[c|JQ7iLo,,6xaa2n`yH[h=');
define('AUTH_SALT',        'teL udxXz#~Mdivr^Ex^RCPJ@L9jXY)M(00>su$;Eo&XFPoy1<1nan{CwfTm*Wv#');
define('SECURE_AUTH_SALT', ';tNR-]IqJ]WejGjGIXd<rrPt}tbuzSQYot^A4yg(,I`2/.E;yNzUgGj/,$=j1lI^');
define('LOGGED_IN_SALT',   'vhTGRIvuL~`]%{QJ;.KhoHkwuaQVH0Iw9Z79;]:tg]uR@d[X=/L26@w&y<aoZ:.^');
define('NONCE_SALT',       '21_+rsY<3mAb@Za=UlttZFb76A,BLMZpUE_8=s]I}*c0(}L.U;GcLUN8rnG}Uir%');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp';

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
