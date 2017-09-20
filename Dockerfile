FROM debian:latest

RUN apt-get update

VOLUME /var/www/html

ADD config/owncloud.conf /etc/apache2/sites-available/owncloud.conf
ADD config/owncloud /var/www/html/

CMD chown -R www-data:www-data /var/www/html/owncloud
CMD ln -s /etc/apache2/sites-available/owncloud.conf /etc/apache2/sites-enabled/owncloud.conf
