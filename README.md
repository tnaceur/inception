# Inception

The Inception Project is designed to provide a practical introduction to containerization and microservices architecture. This project aims to equip participants with hands-on experience using Docker and Docker Compose to manage and deploy containerized applications.
## Features

- **Automated Setup**: Easily set up a WordPress site with a single command.
- **Docker Orchestration**: Manage WordPress, MariaDB, and Nginx using Docker Compose.
- **Makefile Commands**: Simplify container management with predefined Makefile commands.
- **Service Isolation**: Run services in isolated containers to avoid conflicts and improve security.

## Installation

1. **Clone the repository**:

   ```bash
   git clone https://github.com/tnaceur/inception.git
   cd inception

2. **Build and Start the Containers**:

   ```bash   
   make up

3. **Stop and remove the containers**:
   
   ```bash
   make rm
## Makefile Commands

The Makefile provides commands to manage the Docker environment. Use the following commands to perform various actions:

- **Build**: To build the Docker images, run:

    ```bash
    make build
    ```

- **Start**: To build and start all services, run:

    ```bash
    make up
    ```

- **Remove**: To stop and remove all services along with their images and volumes, run:

    ```bash
    make rm
    ```

- **Rebuild**: To remove all services and then start them again, run:

    ```bash
    make re
    ```

