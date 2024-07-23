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

  

  ## Stage2

Network & volume

Description

To be ready for further expansion with multiple services, it is common practice to define networks and volumes in docker-compose, even if there is currently only one service. Let's modify the docker-compose.yaml file by adding a network and a permanent volume for the service.

Objectives

- Define the volume with the mongo-data name;
- Define the network with the hyper-task-manager-network name;
- Add the network to the mongodb service.
- Add the volume to the mongodb service and map it to the container's /data/db directory.



## Stage3

Task manager

Description

In this stage, integrate the main application as an additional service. To accomplish this, use the provided Dockerfile located in the project directory. Use the relevant command leveraging the Dockerfile to construct an image encompassing the main application. Subsequently, define the essential environment variables that your application will utilize. Please adhere to the following objectives to complete your assigned tasks.

Objectives

- Add another service to the docker-compose.yaml file with the attributes below;
- Define the service with the hyper-service name;
- Add the command to build the image for your service;
- Define the container name with the hyper-task-manager value;
- Define the MONGO_INITDB_ROOT_USERNAME environment variable with the ${MONGO_INITDB_ROOT_USERNAME} value;
- Define the MONGO_INITDB_ROOT_PASSWORD environment variable with the ${MONGO_INITDB_ROOT_PASSWORD} value;
- Define the MONGO_HOST_NAME environment variable with the mongodb value;
- Define the MONGO_PORT_NUMBER environment variable with the 27017 value;
- Define the env_file option for the .env file.



## Stage4

Sideline

Description

To ensure the proper functioning of the fastapi-task-manager service, incorporate additional tasks and commands into the docker-compose file. You need to map a port, create a network and define a dependency. Please follow the instructions below.

Objectives

- Add more attributes to the hyper-service service;
- Map the host port 8000 to the container port 8000;
- Add the hyper-task-manager-network network;
- Define the dependency on the mongodb service.