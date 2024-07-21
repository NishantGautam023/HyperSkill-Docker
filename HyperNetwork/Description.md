Here we will have all the descriptions for the stages

## Stage 1

Network

Description

In the first stage, the tasks are rather simple. By following the objectives below, create a network and a volume

In this project, you are required to utilize PyCharm.

Objectives

- Create a network with the name hyper-network;
- Create a volume with the name hyper-volume.


## Stage 2

Postgres

Description

Create a Postgres container from the official Postgres image to connect to hyper-network and expose the 5432 port. Exposing ports when services are in the same network is not always necessary. But here, we need it for test purposes.

Objectives

- Create a Postgres container with the name hyper-postgres;
- Define an environment variable as the Postgres password with the value hyper2023;
- Define an environment variable as the Postgres user with the value hyper;
- Define an environment variable as the Postgres database with the value hyper-db;
- Bind host port 5432 to container port 5432;
- For container network use hyper-network;
- For container volume use hyper-volume and map it to /var/lib/postgresql/data;
- Run the container in detached mode;
- Use the official postgres image with the tag 15.3.


## Stage 3

Adminer

Description

In this project stage, your task is to create a container to help you manage your database. Use a database management tool called adminer. Use the official adminer image and follow the objectives below to finish your task.

Objectives

- Create an adminer container with the name hyper-adminer;
- Bind the host port 8080 to container port 8080;
- For container network use hyper-network;
- Run the container in detached mode;
- Use the official adminer image with the tag 4.8.1.


## Stage 4

Records

Description

You've done a great job! The services should be running now. Your task is to create a table with records using the adminer tool. You can find the details below.

- Open a web browser and go to http://localhost:8080 to access adminer.

Objectives

- Connect to the hyper-db database with the adminer tool;
- Create the users table;
- In the users table, create the id field of the integer type;
- In the users table, create the user_name field of the varchar type, length 99;
- Insert one record with the 99 id and the hyper-user username.


## Stage 5

Description

Time to clean up your system. Stop and delete the containers you created in the previous project stages.

Objectives

- Stop & delete the hyper-postgres container;
- Stop & delete the hyper-adminer container.


## Stage 6

Final sweep

Description

Like containers and images, you can delete networks and volumes. In this stage, you need to delete them. But beware, don't delete any volume with essential data. Follow the objectives below to finish your job.

Objectives

- Delete the hyper-network network;
- Delete the hyper-volume volume.