# Clark Clothes
Hi, and welcome to Clark Clothes! A website where Clark students can buy and sell used clothes on clarks campus! 

## To set up the application, follow these steps
1. Clone this repo
2. Create a .env file within the 220project folder
3. Copy the information that is inside the dot_env_example file and put that into the .env file
4. Make the postgres password something random, and the django secret key something long and random

## Terminal information:
Most of the commands should be executed inside the terminal at this location:
220project\django
For example, if you save this repo on your C Drive in a folder called ClarkClothes, you should navigate to:
"C:\ClarkClothes\220project\django" when you are running most commands

## To run the application, follow these steps:
1. Open up a new terminal window (if using VScode) and navigate to the "django" folder
2. Type "docker compose up" in the terminal (you may have to open up the docker desktop app for this to work). This will start the docker containers based on the compose file that is in the repo
3. Once the terminal displays something like this text, you are ready to go.
```
220project-django-1    | *** WARNING: you are running uWSGI as root !!! (use the --uid flag) ***
220project-django-1    | *** uWSGI is running in multiple interpreter mode ***
220project-django-1    | spawned uWSGI worker 1 (pid: 1, cores: 1)
220project-django-1    | spawned uWSGI worker 2 (pid: 25, cores: 1)
220project-django-1    | spawned uWSGI worker 3 (pid: 26, cores: 1)
220project-django-1    | spawned uWSGI worker 4 (pid: 27, cores: 1)
```
4. Navigate to localhost on port 8080 to view the webpage
Note: to end your session, type "Control + C" in the terminal and it will stop the containers. You will not be able to see the webpage when the containers are stopped.

## Populate the sql database with the database dump file:
1. Connect to psql inside the terminal:
    - Run the server in one terminal
    - In another terminal navigate to django folder and type "docker compose exec postgres bash"
    - Type "psql --username="$POSTGRES_USER" --dbname="$POSTGRES_DB""
2. Create a database called clark clothes by typing "CREATE DATABASE clarkclothes;"
3. Then open a new terminal and navigate to the django folder
4. Type docker compose exec postgres bash
5. Use the file "db_dump.march232023.sql" and dump that into your database by typing this command "psql --username="$POSTGRES_USER" --dbname="$POSTGRES_DB" --file=/postgres_files/db_dump.march232023.sql"

## After starting docker up for the first time, you should run database migrations:
1. Start the server by typing "docker compose up" when navigated to the django folder inside the terminal window
2. Once that has started, open a second terminal window (leave the first one open and the server running) and navigate to the django folder
3. Type "docker compose exec django python manage.py makemigrations" and press enter
4. Type "docker compose exec django python manage.py migrate" and press enter
This updates the database to the most recent schema (defined in the models.py file)
Note: you must run migrations any time you make any database changes!

## Logging in:
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
> Use this website for help: https://docs.npmjs.com/downloading-and-installing-node-js-and-npm#using-a-node-version-manager-to-install-nodejs-and-npm
3. Open a terminal and navigate to WebDrCuTs folder and type "npm install" and press enter
4. Start server in a terminal
5. Open a second terminal and type "npm run test"
Note: Do not push the node modules folder to git!

## SQL notes:
To get into psql in the terminal, follow these steps:
1. Start your server
2. Open a new terminal and navigate to django folder
3. Type: "docker compose exec postgres bash"
This gets you into psql. In here you can run commands like making a database dump

To access your database or run other psql commands, follow these steps:
1. Follow the above steps to get into psql
2. Inside that same terminal, type "psql --username="$POSTGRES_USER" --dbname="$POSTGRES_DB""
Now you should see a prompt like: django_data-#
Inside here you can run psql commands.
```
Examples:
\l to list all databases
\dt to list all relations
\c "database name" to connect to a database
CREATE DATABASE "database name"; to create a database
DROP DATABASE "database name"; to delete database
```

To dump your psql database into a file use these steps:
1. Create a new file inside the postgres_files folder called "db_dump.DATE.sql" but replace the date with today's date (the date of your db dump)
2. Open terminal and navigate to django folder
3. Type "docker compose exec postgres bash"
4. Type "pg_dump --username="$POSTGRES_USER" --dbname="$POSTGRES_DB" --file=/postgres_files/db_dump.DATE.sql" but replace db_dump.DATE.sql with the name of your file
Your file should now be populated with your database information
