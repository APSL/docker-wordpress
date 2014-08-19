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

    DB_NAME=
    DB_USER=
    DB_PASSWORD=
    DB_HOST=
    DB_PORT=

    DOMAIN=

    WP_TABLE_PREFIX=wp_
    WPLANG=es_ES
    WP_DEBUG=False

