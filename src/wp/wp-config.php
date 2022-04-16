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
define('DB_USER', 'achopper');

/** MySQL database password */
define('DB_PASSWORD', 'pass');

/** MySQL hostname */
define('DB_HOST', 'mariadb');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

define('WP_REDIS_HOST', 'redis');
define('WP_REDIS_PORT', '6379');
define('WP_CACHE_KEY_SALT', 'achopper.42.serv');
define('WP_CAHCHE', true);

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */

define('AUTH_KEY',         'ocsmr#Za-WoY-XtxO+]VTZk<oe+{Bmxvl|4=nP&Q;{hO(E=IypA<_A`+(+lR}}Uu');
define('SECURE_AUTH_KEY',  'YJx`QGnb|g@^j)Y[nEQRhv;9!hd.d5@?U$9s] 6.-q+v4C|1B+0DR^1,_vntF=`p');
define('LOGGED_IN_KEY',    'tk*vm~r5|vCDp7c OM9MN8l7;hFV_YJoHVf*1~yarA(&$>$`b8c+aA%2B|[lHD:y');
define('NONCE_KEY',        '9@YUY&l]qXnH0tG+9ZzJ26~y}qeSDPkmw(5e4D!E!h_-L;d|q-]I[F<oL-PL4lC/');
define('AUTH_SALT',        't{U+|X69l;_aUl%-dFjE^#YgM^Bl|b#K&,8C|qqf<|? ARGP;.gyp{4oaeR2V<N^');
define('SECURE_AUTH_SALT', 'O?[<;0r(#vM54+=C:::2v(&)%$*a$D;GdCRz??Mk$6]-}=hf/yE?{|?.%!@mreDP');
define('LOGGED_IN_SALT',   '|crvgpKoIO X&/)A@xWX^(O[?5]-qq+d9?O3Ldpu+H0=b8vKW9-f?h|;mJA-61)x');
define('NONCE_SALT',       'gqAFlyn>|HGe|VOc4/rRL{P>Y[-iySq>JexzO`x4h`Tk8B/4Qo,0Hi=Lgv|p%-j|');

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