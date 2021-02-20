# Change database driver
    - 1. Navigate to config/database and locate driver psql
    ```
        config/database.php

        'default' => env('DB_CONNECTION', 'pgsql'),
    ```
    - 2. Create database first
    ```
        ## Jenkins execute database script ##
            ### on new project make sure you change permissions : 

           - 1.  git update-index --chmod=+x infra/scripts/database/create.sh
           
           - 2. Cahnge directory to infra/scripts/database/create.sh

    ```
    - 3. Change the .env settings for psql
    ```
        DB_CONNECTION=pgsql
		DB_HOST=127.0.0.1
		DB_PORT=5432
		DB_DATABASE=database
		DB_USERNAME=username
		DB_PASSWORD=password

    ```
    3.