FROM debian:oldstable

RUN apt-get -y update && apt-get -y upgrade ; apt-get install -y openssl
RUN apt-get install -y nginx

RUN mkdir /etc/nginx/ssl

RUN touch /etc/nginx/ssl/private.key ; touch /etc/nginx/ssl/certificate.crt

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/private.key -out /etc/nginx/ssl/certificate.crt  -subj "/C=MA/ST=Morocco/L=Morocco/O=42 School/OU=tnaceur/CN=tnaceur.42.fr/"

COPY nginx.conf /etc/nginx/conf.d/
COPY index.html /etc/nginx/conf.d/

EXPOSE 443


CMD ["nginx", "-g", "daemon off;"]