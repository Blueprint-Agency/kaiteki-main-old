# Kaiteki.my legacy site — static HTML + light PHP (contact forms via PHPMailer).
# Mirrors the original cPanel/Apache hosting (PHP 8.1, mod_rewrite). No database.
FROM php:8.1-apache

# The site ships a .htaccess with RewriteEngine rules — enable mod_rewrite and
# allow .htaccess overrides in the docroot.
RUN a2enmod rewrite headers \
 && sed -ri 's!AllowOverride None!AllowOverride All!g' /etc/apache2/apache2.conf

# Copy the site into Apache's document root.
COPY . /var/www/html/

# Strip build/repo files from the image and fix ownership.
RUN rm -rf /var/www/html/Dockerfile /var/www/html/.dockerignore \
           /var/www/html/.gitignore /var/www/html/README.md \
           /var/www/html/.git /var/www/html/.github \
 && chown -R www-data:www-data /var/www/html

EXPOSE 80
# Base image already runs apache2-foreground.
