<?php
/**
 * AnaxExp-specific configuration file.
 */

$anaxexp['base_url'] = '{{ getenv "BASE_URL" "" }}';

$anaxexp['db']['host'] = '{{ getenv "DB_HOST" "" }}';
$anaxexp['db']['name'] = '{{ getenv "DB_NAME" "" }}';
$anaxexp['db']['username'] = '{{ getenv "DB_USER" "" }}';
$anaxexp['db']['password'] = '{{ getenv "DB_PASSWORD" "" }}';
$anaxexp['db']['charset'] = '{{ getenv "DB_CHARSET" "utf8" }}';
$anaxexp['db']['collation'] = '{{ getenv "DB_COLLATION" "" }}';

$anaxexp['wp']['auth_key'] = '{{ getenv "WP_AUTH_KEY" "" }}';
$anaxexp['wp']['auth_salt'] = '{{ getenv "WP_AUTH_SALT" "" }}';
$anaxexp['wp']['secure_auth_key'] = '{{ getenv "WP_SECURE_AUTH_KEY" "" }}';
$anaxexp['wp']['secure_auth_salt'] = '{{ getenv "WP_SECURE_AUTH_SALT" "" }}';
$anaxexp['wp']['logged_in_key'] = '{{ getenv "WP_LOGGED_IN_KEY" "" }}';
$anaxexp['wp']['logged_in_salt'] = '{{ getenv "WP_LOGGED_IN_SALT" "" }}';
$anaxexp['wp']['nonce_key'] = '{{ getenv "WP_NONCE_KEY" "" }}';
$anaxexp['wp']['nonce_salt'] = '{{ getenv "WP_NONCE_SALT" "" }}';
$anaxexp['wp']['table_prefix'] = '{{ getenv "WP_TABLE_PREFIX" "wp_" }}';
$anaxexp['wp']['debug'] = '{{ getenv "WP_DEBUG" "" }}';

$anaxexp['redis']['host'] = '{{ getenv "REDIS_HOST" "" }}';
$anaxexp['redis']['port'] = '{{ getenv "REDIS_PORT" "6379" }}';
$anaxexp['redis']['password'] = '{{ getenv "REDIS_PASSWORD" "" }}';

if (isset($_SERVER['HTTP_X_REAL_IP'])) {
  $_SERVER['REMOTE_ADDR'] = $_SERVER['HTTP_X_REAL_IP'];
}

if (isset($_SERVER['HTTP_X_FORWARDED_PROTO']) && $_SERVER['HTTP_X_FORWARDED_PROTO'] == 'https') {
  $_SERVER['HTTPS'] = 'on';
}

defined('WP_HOME')    || define('WP_HOME', $anaxexp['base_url']);
defined('WP_SITEURL') || define('WP_SITEURL', $anaxexp['base_url']);

defined('DB_HOST')     || define('DB_HOST', $anaxexp['db']['host']);
defined('DB_NAME')     || define('DB_NAME', $anaxexp['db']['name']);
defined('DB_USER')     || define('DB_USER', $anaxexp['db']['username']);
defined('DB_PASSWORD') || define('DB_PASSWORD', $anaxexp['db']['password']);
defined('DB_CHARSET')  || define('DB_CHARSET', $anaxexp['db']['charset']);
defined('DB_COLLATE')  || define('DB_COLLATE', $anaxexp['db']['collation']);

defined('AUTH_KEY')         || define('AUTH_KEY', $anaxexp['wp']['auth_key']);
defined('AUTH_SALT')        || define('AUTH_SALT',$anaxexp['wp']['auth_key']);
defined('SECURE_AUTH_KEY')  || define('SECURE_AUTH_KEY', $anaxexp['wp']['secure_auth_key']);
defined('SECURE_AUTH_SALT') || define('SECURE_AUTH_SALT', $anaxexp['wp']['secure_auth_salt']);
defined('LOGGED_IN_KEY')    || define('LOGGED_IN_KEY', $anaxexp['wp']['logged_in_key']);
defined('LOGGED_IN_SALT')   || define('LOGGED_IN_SALT', $anaxexp['wp']['logged_in_salt']);
defined('NONCE_KEY')        || define('NONCE_KEY', $anaxexp['wp']['nonce_key']);
defined('NONCE_SALT')       || define('NONCE_SALT', $anaxexp['wp']['nonce_salt']);
defined('FS_METHOD')        || define('FS_METHOD', 'direct');

if (!empty($anaxexp['redis']['host'])) {
  defined('WP_REDIS_HOST')     || define('WP_REDIS_HOST', $anaxexp['redis']['host']);
  defined('WP_REDIS_PORT')     || define('WP_REDIS_PORT', $anaxexp['redis']['port']);
  defined('WP_REDIS_PASSWORD') || define('WP_REDIS_PASSWORD', $anaxexp['redis']['password']);
}

isset($table_prefix) || $table_prefix  = $anaxexp['wp']['table_prefix'];
defined('WP_DEBUG')  || define('WP_DEBUG', (bool) $anaxexp['wp']['debug']);