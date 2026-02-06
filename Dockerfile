# استخدم صورة PHP 8.2 مع PHP-FPM
FROM php:8.2-fpm

# تعيين مجلد العمل
WORKDIR /var/www

# تثبيت الحزم الأساسية وPostgreSQL dev libraries
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

# تثبيت امتدادات PHP المطلوبة للـ Laravel
RUN docker-php-ext-install pdo_mysql pdo_pgsql mbstring exif pcntl bcmath gd

# تثبيت Composer عالميًا
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# نسخ كل ملفات المشروع أولاً
COPY . .

# تثبيت dependencies الخاصة بـ Laravel
RUN composer install --no-dev --optimize-autoloader

# توليد مفتاح التطبيق (يمكنك استخدام مفتاح ثابت من قبل أو توليده على Render)
RUN php artisan key:generate

# ضبط الأذونات على storage و bootstrap/cache
RUN chown -R www-data:www-data /var/www \
    && chmod -R 755 /var/www/storage \
    && chmod -R 755 /var/www/bootstrap/cache

# تعيين متغير المنفذ لـ Render
ENV PORT 9000

# تعريض المنفذ
EXPOSE 9000

# تشغيل PHP-FPM
CMD ["php-fpm"]
