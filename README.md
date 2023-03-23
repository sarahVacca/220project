# Clark Clothes
Hi, and welcome to Clark Clothes! A website where Clark students can buy and sell used clothes on clarks campus! 

## To set up the application, follow these steps:
1. Clone this repo
2. Create a .env file within the 220project folder
3. Copy the information that is inside the dot_env_example file and put that into the .env file
4. Make the postgres password something random, and the django secret key something long and random

## Populate the sql database with the database dump file
1. Connect to psql inside the terminal 
2. Create a database by typing "CREATE DATABASE" + database name
3. Then use the file "db_dump.march18.sql" and dump that into your database
This will allow you to login to the clark clothes website. 

## To run the application, follow these steps:
1. Open up a new terminal window (if using VScode) and navigate to the "django" folder
2. Type "docker compose up" in the terminal (you may have to open up the docker desktop app for this to work). This will start the docker containers based on the compose file that is in the repo
3. Once the terminal displays something like this text, you are ready to go.
220project-django-1    | *** WARNING: you are running uWSGI as root !!! (use the --uid flag) ***
220project-django-1    | *** uWSGI is running in multiple interpreter mode ***
220project-django-1    | spawned uWSGI worker 1 (pid: 1, cores: 1)
220project-django-1    | spawned uWSGI worker 2 (pid: 25, cores: 1)
220project-django-1    | spawned uWSGI worker 3 (pid: 26, cores: 1)
220project-django-1    | spawned uWSGI worker 4 (pid: 27, cores: 1)
4. Navigate to localhost on port 8080 to view the webpage
Note: to end your session, type "Control + C" in the terminal and it will stop the containers. You will not be able to see the webpage when the containers are stopped.

## After starting docker up for the first time, you should run database migrations
1. Start the server by typing "docker compose up" when navigated to the django folder inside the terminal window
2. Once that has started, open a second terminal window (leave the first one open and the server running) and navigate to the django folder
3. Type "docker compose exec django python manage.py makemigrations" and press enter
4. Type "docker compose exec django python manage.py migrate" and press enter
This updates the database to the most recent schema (defined in the models.py file)
Note: you must run migrations any time you make any database changes!

## Logging in
You must create a user under django admin in order to enter the website. To do that, follow these steps:
1. Run the server
2. Open a new terminal and navigate to django folder
3. Type "docker compose exec django python manage.py create superuser"
4. Enter your desired username
5. Enter your email address
6. Enter your password, enter it again.
When you enter the website, you can now login using these credentials

## Database notes:
This project is built using a postgres sql database. 
To interact with this database, follow these steps.
1. Start the server and then in a new terminal type "docker compose exec postgres bash" and press enter.
2. Type "psql --username="$POSTGRES_USER" --dbname="$POSTGRES_DB"" and press enter
This will open up psql for use. In psql you can view the database tables, delete the database, dump the data inside the database into a file, populate a database based on a previous dump file, and more

## Testing notes:
1. To test using the unit tests in tests.py go to a terminal and navigate to the django folder
2. Then type: "docker compose exec django python manage.py test" and press enter.
This should run the tests

## Automation notes:
To test the automated login feature, follow these steps:
1. Install npm by navigating to the WebDrCuTS folder in the terminal and typing "npm install -g npm"
2. Install node.js and a java jdk
Use this website for help: https://docs.npmjs.com/downloading-and-installing-node-js-and-npm#using-a-node-version-manager-to-install-nodejs-and-npm
3. Open a terminal and navigate to WebDrCuTs folder and type "npm install" and press enter
4. Start server in a terminal
5. Open a second terminal and type "npm run test"
Note: Do not push the node modules folder to git!

## SQL notes:
1. To get into psql in the terminal, navigate to django folder and type: "docker compose exec postgres bash"
2. Dump database using this command "docker exec -i 220project-postgres-1 /bin/bash -c "PGPASSWORD=$POSTGRES_PASSWORD psql --username $POSTGRES_USER clarkclothes" < C:\ClarkClothes\220project\postgres_files\db_dump.DATE.sql"
