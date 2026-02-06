# Use official PHP 8.2 image with PHP-FPM
FROM php:8.2-fpm

# Set working directory
WORKDIR /var/www

# Install system dependencies and PostgreSQL dev libraries
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    libpq-dev \
    && apt-get clean

# Install PHP extensions required by Laravel, including PostgreSQL
RUN docker-php-ext-install pdo_mysql pdo_pgsql mbstring exif pcntl bcmath gd

# Install Composer globally
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Copy composer.json and composer.lock first to cache dependencies
COPY composer.json composer.lock ./

# Install Laravel dependencies
RUN composer install --no-dev --optimize-autoloader

# Copy the rest of the project
COPY . .

# Set permissions for storage and bootstrap/cache
RUN chown -R www-data:www-data /var/www \
    && chmod -R 755 /var/www/storage \
    && chmod -R 755 /var/www/bootstrap/cache

# Expose port (Render uses $PORT)
EXPOSE 9000

# Start PHP-FPM
CMD ["php-fpm"]
