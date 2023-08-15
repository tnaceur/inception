
# && apt-get install -y openssl

# RUN mkdir /etc/nginx/ssl
# RUN touch /etc/nginx/conf.d/default.conf
# COPY nginx.conf /etc/nginx/conf.d/default.conf

FROM debian:oldstable

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install -y nginx
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]

# RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/private.key -out /etc/nginx/ssl/certificate.crt  -subj "/C=MA/ST=Morocco/L=Morocco/O=42 School/OU=tnaceur/CN=tnaceur.42.fr/"
