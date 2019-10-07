a2enmod proxy
a2enmod proxy_fcgi
a2enmod proxy_html
a2enmod headers
a2enmod vhost_alias
a2enmod rewrite
a2enmod ssl
a2enmod setenvif
a2enmod http2
a2dismod mpm_prefork
a2enmod mpm_event
a2enconf php7.2-fpm
a2ensite 000-init.test

/usr/sbin/apache2ctl -D FOREGROUND
