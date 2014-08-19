FROM apsl/lamp
MAINTAINER  APSL <bcabezas@apsl.net>

#user
RUN \
    groupadd -g 501 wordpress ;\
    useradd -u 501 -g 501 -d /app -s /bin/bash wordpress  ;\
    adduser www-data wordpress

# genkeys for wp key gen
ADD genkeys.py /usr/local/bin/genkeys.py

ADD wp-config.php.tpl  /root/
ADD apache-vhost.conf.tpl  /root/

ADD setup.d/wordpress /etc/setup.d/90-wordpress
