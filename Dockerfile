FROM ubuntu:16.04

# Update
RUN apt-get update && \
    apt-get dist-upgrade -y

# Install some tools
RUN apt-get install -y \
    curl \
    python \
    g++ \
    make \
    libpng-dev \
    autoconf \
    automake \
    libtool \
    nasm

# Install PHP
RUN apt-get install -y \
      php7.0 \
      php7.0-cli \
      php7.0-gd \
      php7.0-json \
      php7.0-ldap \
      php7.0-mbstring \
      php7.0-mysql \
      php7.0-pgsql \
      php7.0-sqlite3 \
      php7.0-xml \
      php7.0-xsl \
      php7.0-zip \
      php7.0-soap \
      php7.0-opcache

# Install Composer
RUN curl https://getcomposer.org/installer | php -- && mv composer.phar /usr/local/bin/composer && chmod +x /usr/local/bin/composer

# Install NodeJS
RUN curl -sL curl -sL https://deb.nodesource.com/setup_8.x | bash \
    && apt-get install nodejs \
    && nodejs -v

CMD [ "node" ]
