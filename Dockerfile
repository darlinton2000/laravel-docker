FROM php:8.1-fpm

# Argumentos definidos no docker-compose.yml
ARG user
ARG uid

# Intalação das dependências do sistema
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

# Limpeza do cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Instalação das extensões do PHP
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# Obtendo o composer mais recente
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Criando usuário do sistema para executar comandos Composer e Artisan
RUN chmod +x /home && useradd -G www-data,root -u $uid -d /home/$user $user && mkdir -p /home/$user/.composer && \
    chown -R $user:$user /home/$user

# Definindo o diretório de trabalho
WORKDIR /var/www

USER $user 
