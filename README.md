# drupal-9-dev

This is my personal development environment when working with Drupal. Created via the
`composer create-project drupal/recommended-project my_site_name_dir` command, see the drupal docs
for more info: https://www.drupal.org/node/2718229?no_cache=1651100340#s-create-a-project.

The [drupal/core-dev](https://packagist.org/packages/drupal/core-dev) package is included which
brings [phpcs](https://github.com/squizlabs/PHP_CodeSniffer) and
[phpstan-drupal](https://github.com/mglaman/phpstan-drupal) into the project.

This is also some kind of resource collection for my self to quickly set up a development environment.

## Usage

This setup uses [ddev](https://ddev.readthedocs.io/en/stable/) to provide a webserver and database via docker compose.

To start the containers, run: `ddev start`. <br/>
Stop: `ddev stop`. <br/>
Import database dump: `ddev import-db --src=/path/to/db.sql.gz`

For more see the [ddev CLI Docs](https://ddev.readthedocs.io/en/stable/users/cli-usage/).

### composer

Prefix all composer commands with `ddev`, eg. `ddev composer install`.

### drush

Prefix all drush commands with `ddev exec`, eg. `ddev exec drush cr`.

## Pre-configuration

Includes necessary PHPStorm configs for:

* PHP CodeSniffer
* PHPStan Drupal
* PHP Interpreter via ddev (docker-compose)

### Drupal configs

Drupal's configs are imported to /config. Add this to your settings.php: <br/>
`$settings['config_sync_directory'] = './../config';`

The configs include a basic installation with the standard profile.

## Resources

* [[Drupal.org] CodeSniffer](https://www.drupal.org/docs/contributed-modules/code-review-module/installing-coder-sniffer)
* [[ddev Docs] PhpStorm Integration](https://ddev.readthedocs.io/en/stable/users/topics/phpstorm/)
* [[Blocker] PHPStorm Bug](https://youtrack.jetbrains.com/issue/WI-62463)
* [[GitHub] drupal/core-dev](https://github.com/drupal/core-dev)
* [[mglaman.dev] PHPStan](https://mglaman.dev/blog/tighten-your-drupal-code-using-phpstan)

### TODO:

* PHPCodeSniffer/PHPStan with Docker remote (see Blocker issue)
* PHPUnit pre-configure https://mglaman.dev/blog/running-drupals-phpunit-test-suites-ddev
* Xdebug
