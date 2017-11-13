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
define('AUTH_KEY',         'WZglh J/ugd$x9qg|<k7P)MZ5.+=F I;9n%$f.A+ybX[_KeKLy).bd$(U~Y6&~?u');
define('SECURE_AUTH_KEY',  ')-7)p54* n.An}LfPFKSgQHs,D7VH-.BdD1&<m>Psv+!`b>6GO{5lGki~^m|5[!*');
define('LOGGED_IN_KEY',    '-q>mhH0!vM=dcp=_@Ygr=D(zt]Nh+ddTH^>JT`H~@P0M`E4DR$bltt60e1uh#Oj6');
define('NONCE_KEY',        'a+/Y7g69kYX^/LTiQ>(K+_9uIK!dA#<ebbb15=mgD)+t$0btK>iH4f!Qc!7}[:q]');
define('AUTH_SALT',        'Ks48i^WF.._NomOFym8g x@jFt#)%ZgqcFD)5.2qJ0Q%Im9,p:$_KNM*Y3mm;3xl');
define('SECURE_AUTH_SALT', '.k-=WNrp-Mwmp7QWM&c>iI-xM1lzk+5YrY)gkk*,2>XlB1?ZFVM1Y:6Ta6cP0^E&');
define('LOGGED_IN_SALT',   '9^}[oC7h<<Wgrjh/}sc]oY,tj@%4z&cifI7KvdE1*o1*L*fl^[9j8WB~`z06!l]A');
define('NONCE_SALT',       'FR1d8^{CH+F]!m60*&NW|,_| h`{7@v`TC*BxFc;J=_>EO|?C6{3Y?OHO7[p%O:u');

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
