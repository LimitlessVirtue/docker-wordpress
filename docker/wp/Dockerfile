FROM wordpress:latest

# Install xdebug
RUN pecl install xdebug && docker-php-ext-enable xdebug

# Install Less
RUN apt-get update && apt-get -y install less nano telnet

# wp-cli installed from here not from docker-compose
# Install WP-CLI
RUN curl -s -o /usr/local/bin/wp \
    https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x /usr/local/bin/wp

ENV PATH="/opt/limitlessv/bin:${PATH}"
