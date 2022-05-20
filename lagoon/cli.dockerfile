FROM uselagoon/php-7.4-cli-drupal:latest

COPY composer.* /app/
COPY assets /app/assets
RUN COMPOSER_MEMORY_LIMIT=-1 composer install --no-dev
COPY . /app
RUN mkdir -p -v -m775 /app/web/sites/default/files

COPY lagoon/base-image-change-demo /lagoon/entrypoints/71-base-image-change-demo-entrypoint
COPY lagoon/base-image-version /lagoon/base-image-version
    
# Define where the Drupal Root is located
ENV WEBROOT=web
