composer install && cp .env.example .env && source ./.env && ./vendor/bin/sail up -d && docker exec -i car-sharing-api-mysql_db-1 mysql -usail -ppassword laravel < ./backup.sql
