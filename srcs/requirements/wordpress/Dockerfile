FROM debian:oldstable

RUN apt update -y; apt upgrade -y;\
    apt install -y php7.4 php-fpm php-mysql mariadb-client sendmail curl

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp;\
    mkdir -p /var/www/html /run/php

COPY ./tools/script.sh /tmp/script.sh

RUN chmod +x /tmp/script.sh

CMD [ "/tmp/script.sh" ]