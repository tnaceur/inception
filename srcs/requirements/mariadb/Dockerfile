FROM debian:oldstable

RUN apt update -y ; apt upgrade -y; apt install -y mariadb-server

COPY ./tools/script.sh /tmp/script.sh

RUN chmod +x /tmp/script.sh

CMD [ "/tmp/script.sh" ]
