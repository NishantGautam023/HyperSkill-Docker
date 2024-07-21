## Stage 1

NoSQL

Description

To incorporate MongoDB as the storage for this project, create the docker-compose.yaml file that launches the MongoDB service using the official Mongo image.

Please navigate and work in the task-manager directory for upcoming tasks. The Docker files, the primary application, and the API documentation are there. You need to run stage-specific commands inside that directory.

Objectives

- In the docker-compose.yaml file, define the file syntax version as 3.1;
- Define one service with the attributes below:
  - Define the service with the mongodb name;
  - Use the official mongo:6.0.8 image;
  - Define a container name with the hyper-mongo value;
  - Map the host port as 27027 to the container port 27017;
  -Define the MONGO_INITDB_ROOT_USERNAMEenvironment variable with the ${MONGO_INITDB_ROOT_USERNAME}value;
  - Define the MONGO_INITDB_ROOT_PASSWORD environment variable with the ${MONGO_INITDB_ROOT_PASSWORD} value;
  - Define the env_file option for the .env file.