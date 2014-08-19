======================
Docker wordpress image 
======================

Wordpress image managed with circus. Wordpress config parameters managed with envtpl. 
Keys generated if not found in config.

Description
===========

Wordpress docker image. Features:

* wp-config.php generated with envtpl. See env vars below.
* If not set in env vars, wodpress security keys are generated.
* circus to control processes. http://circus.readthedocs.org/
* envtpl to setup config files on start time, based on environ vars. https://github.com/andreasjansson/envtpl
* See apsl/lamp base image for more info: https://registry.hub.docker.com/u/apsl/lamp/

As an example of envtpl, circus.ini itself is managed with envtpl

Env vars (default value shown)::

    -e DB_NAME=wordpress
    -e DB_USER=wpuser
    -e DB_PASSWORD=1234
    -e DB_HOST=172.17.42.1
    -e DB_PORT=3306

    -e DOMAIN=hostname      # Sets WP_SITEURL and WP_HOME, and apache ServerName. default: container hostname. 

    -e WP_TABLE_PREFIX=wp_
    -e WPLANG=es_ES
    -e WP_DEBUG=False
    -e DB_COLLATE=""

