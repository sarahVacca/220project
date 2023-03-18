# Clark Clothes
Hi, and welcome to Clark Clothes! A website where Clark students can buy and sell used clothes on clarks campus! 

## To set up the application, follow these steps:
1. Clone this repo
2. This project uses python, docker, django, and postgres sql, make sure to install all of these if you don't already have them
3. Go to the .env file within the 220project folder
4. Change the postgres password to something random, and change the django secret key to something long and random
5. Create a .gitignore file inside the clarkclothes folder and add the following text into it:
.DS_Store
__pycache__
.env
You have finished setting up the application!

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
## Below are the ORIGINAL README CONTENTS from CSCI220


220project
Project for CSCI 220: Database Management and Systems Design

ORIGINAL README CONTENTS
A starter project for Clark's Databases course (CSCI 220). This project includes a web server and database.

Follow these steps to get started:

### Step 0: Clone This Repository

Unless otherwise specified, all commands mentioned below should be run within the root directory of this repository.

### Step 1: Install Docker

This project includes several components: 

- uWSGI, which will run your Django application code
- NGINX, a web server which will allow browsers to communicate with uWSGI
- PostgresSQL, a database which will store your application's persistent data

It could be time-consuming to install and configure all of these on your computer, but thankfully there is a better way: Docker! [Install Docker](https://docs.docker.com/get-docker/), and it will be easy to run all of these components.

### Step 2: Secure Configuration

It is a terrible idea to run software with default passwords. To configure the password for the database and other settings, you will need to write them in a `.env` file. Follow these steps:

1. Copy `dot_env_example` to `.env`
2. Run `chmod 600 .env` to prevent other users from reading your `.env` file
3. Edit `.env`, changing:
  - The text `RANDOM_PASSWORD` to a password which is actually random
  - The text `SOMETHING_LONG_AND_RANDOM` to random text, ideally generated using the Python one-liner below:

```
python3 -c "import string,random; uni=string.ascii_letters+string.digits; print(''.join([random.SystemRandom().choice(uni) for i in range(random.randint(45,50))]))"
```

### Step 3: Start the Docker Services

Run:
```
docker compose up
```

The first time you run it, this command will take a few minutes to complete. This is because Docker needs to download the code for PostgresSQL, etc.

When you are done running the application, you can stop it by typing `Control-C`.

### Step 4: Run Migrations

Follow the instructions below to run the database migrations. This will ensure the database has the schema for the applications.

### Step 5: Load the Applications

Load <http://localhost:8080> and you should be redirected to the "Django administration" login interface.

Load <http://localhost:8080/minifacebook> to view the latest statuses of users of the minifacebook application. See instructions below for using the Django admin interface, which you can use to create users and status updates. 


### Hints

### Creating Admin Accounts

To create a superuser, which can access the Django admin interface:

```
docker compose exec django python manage.py createsuperuser
```

To create a regular user, load `/admin/auth/user/add/` in your browser.

You can then log into the Django admin interface using this superuser account.

### Database Operations

#### Manual Commands

To interactively run SQL commands, run:

```
> docker compose exec postgres bash
# psql --username="$POSTGRES_USER" --dbname="$POSTGRES_DB"
```

#### Migrations

When you edit Django models, the changes don't take effect until you update the database. This is done in two steps.

First, you create a migration file, which describes the changes to be made:

```
docker compose exec django python manage.py makemigrations
```

Then, you apply those changes by running the migration file:

```
docker compose exec django python manage.py migrate
```

You can read more about [Django migrations here](https://docs.djangoproject.com/en/3.2/topics/migrations/).

#### Dump

To dump the SQL commands needed to recreate a database to file, run:

```
> docker compose exec postgres bash
# pg_dump --username="$POSTGRES_USER" --dbname="$POSTGRES_DB" --file=/postgres_files/db_dump.DATE.sql

```

#### Load

To execute SQL commands from a file, run:

```
> docker compose exec postgres bash
# psql --username="$POSTGRES_USER" --dbname="$POSTGRES_DB" --set ON_ERROR_STOP=on --file /postgres_files/db_dump.DATE.sql
```



docker exec -i 220project-postgres-1 /bin/bash -c "PGPASSWORD=$POSTGRES_PASSWORD psql --username $POSTGRES_USER clarkclothes" < C:\ClarkClothes\220project\postgres_files\db_dump.DATE.sql
