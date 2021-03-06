FROM php:7.4.3-apache
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Install dependencies
RUN apt-get update
RUN apt-get install -y \
    build-essential \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    locales \
    zip \
    jpegoptim optipng pngquant gifsicle \
    vim \
    unzip \
    git \
    apt-utils \
    iputils-ping \
    locales \
    graphicsmagick \
    ghostscript \
    curl
    
# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*


# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
