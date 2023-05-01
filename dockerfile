FROM php:8.1-apache

# Copy the PHP application files to the container
COPY src/ /var/www/html/

# Copy the SQL file to the container
COPY redlock-db.sql /docker-entrypoint-initdb.d/

COPY src/new-file.php /var/www/html/


# Set ownership to www-data and remove write and execute permission for others
RUN chown -R www-data:www-data /var/www/html/ && \
    chmod -R o-rwx /var/www/html/

# Enable mysqli extension
RUN docker-php-ext-install mysqli

# Expose port 80
EXPOSE 80

# Start Apache Web Server
CMD ["apache2-foreground"]
