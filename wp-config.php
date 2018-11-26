<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clés secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C’est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define('DB_NAME', 'fazenda');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'caroline');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', 'fazendacaroline');

/** Adresse de l’hébergement MySQL. */
define('DB_HOST', 'localhost');

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define('DB_CHARSET', 'utf8mb4');

/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'z^L9:LJ?7H`WR0  z4#,bYO:x`VI,LEf,#|X;m)`OxunSc5{k?.*k,Y#bsOjwpxm');
define('SECURE_AUTH_KEY',  '|Rg4N]U<p.pgM0isU>S1!$}Z52%_L4^Z3C.IE9RTO0-.@38LsT1bh:>@N=_q5Fix');
define('LOGGED_IN_KEY',    '00}/&$t8cnsd6MuiqJ;)VPU7Jtai=XJIVW{?)`7}jfK&#]4{f#v +}$AE!3R%lZT');
define('NONCE_KEY',        'NQn#?O;Sn4^h!&PUz^-]^W$9Q%y,7b4[r&/iSnt3%Oe9RKU0=Mx0>m4xi$xGHVLP');
define('AUTH_SALT',        '<AdQhyUSy32=&xw*~i,(( )fTaal#$G@_LVi_Sp`KgEAEZQ~jq.]#[V}S]Uy<1~+');
define('SECURE_AUTH_SALT', '5wW2PY,kZ@*//mU/q$sC9=L&VH,f3t>k%ZC._Q-$}.+yLO&D|C&_.Y8md* qs#@%');
define('LOGGED_IN_SALT',   '4-8DKX}pvLVPqxv||.*@fxz|}u$RyUI~Dj/B&/wmfGgZ(7g|>Vkfm`Ryg;/?ooL-');
define('NONCE_SALT',       'u-]-PT|Xy:LmzKgy1Y)ZZNO[vuiQB2!Pr.jcCdYzL#.9k5IJ|mf^3= Wq?[n}?`~');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix  = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* C’est tout, ne touchez pas à ce qui suit ! */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');

add_filter('https_ssl_verify', '__return_false');
add_filter('https_local_ssl_verify', '__return_false');