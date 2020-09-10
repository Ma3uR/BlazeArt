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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'blazeart' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '6JXD}TA~Z2~gUiLA+CHnD3w;XONWUq?VJwh}BP~aI2OOi_1u<JRi%KhH.rxBibxm' );
define( 'SECURE_AUTH_KEY',  'X`hEn~tn5AoZE*QHl>aUQMlNGvZV+D%q|vdms0DFoy@4!:+kn-n.`Mvs_CtV01j<' );
define( 'LOGGED_IN_KEY',    ':{=h/iVB.g(tGO!Uv!Les/7x.Jj[WwfvKhY og<9Po[.!) &[^Q(n5.n`T8:HqXQ' );
define( 'NONCE_KEY',        '*$/YEz!Kg0QXY5Ge ?&q%j7.,Jd;fn!vF7y^j+|^g?sDUubP.`4| zSS&bHmgbM!' );
define( 'AUTH_SALT',        'x.!5&iyyW#G_3[0^ <{oXi+)FIfi^AGcT@J UI1q SAT7F,rs/;$q*YIjDj+vydn' );
define( 'SECURE_AUTH_SALT', 'u-+kJX@gj3C4DnYvM)LA]b.3TvZT&B<@V!J&Jc$Z~])evjh:90]!{8m]ju@2bWkA' );
define( 'LOGGED_IN_SALT',   '?{D?%kwM3J5F6jEFPYftfdY5-32)>|jOvJ`@fOPUzH0}^rHKgXDL(T*/XzC]p.a{' );
define( 'NONCE_SALT',       '$SGh 5~5%]53KnD>}v*NG^R;?I B nZ bd[7)V;]8]]lxv=/&k0y/F>R&zUWv#`b' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
