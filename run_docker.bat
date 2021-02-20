docker kill japp 
docker run --rm -p 8009:8000 --name jtravel-ecms ^
-e APP_NAME=Laravel ^
-e APP_ENV=local ^
-e APP_KEY=base64:YkIby73ZYlerFaLuR840eH5gXqbBMb+/9imgCq/7Py0= ^
-e APP_DEBUG=true ^
-e LOG_CHANNEL=stack ^
-e LOG_LEVEL=debug ^
-e DB_CONNECTION=pgsql ^
-e BROADCAST_DRIVER=log  ^
-e CACHE_DRIVER=file ^
-e QUEUE_CONNECTION=sync ^
-e SESSION_DRIVER=file ^
-e SESSION_LIFETIME=120 ^
-e MEMCACHED_HOST=127.0.0.1 ^
-e REDIS_HOST=127.0.0.1 ^
-e REDIS_PASSWORD=null ^
-e REDIS_PORT=6379 ^
-e MAIL_MAILER=smtp ^
-e MAIL_HOST=mailhog ^
-e MAIL_PORT=1025 ^
-e MAIL_USERNAME=null ^
-e MAIL_PASSWORD=null ^
-e MAIL_ENCRYPTION=null ^
-e MAIL_FROM_ADDRESS=null ^
-e MAIL_FROM_NAME=Laravel ^
jurnisa/jurni-solution:jtravel-ecms 