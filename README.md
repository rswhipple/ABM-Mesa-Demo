# ABM-Mesa-Demo
Basic demo for creating Agent Based Models using the Mesa framework and Python.

## Prerequisites

**Docker**:

- Docker Engine: For installation instructions, refer to the Docker documentation: https://docs.docker.com/engine/install/

## Installation

1. **Build the Docker Image & Run the API**:
   ```bash
   docker-compose up -d
    ```
2. **Run Testing suite**:
   ```bash
   docker-compose run test  
   ```
The testing report is logged in pytest_logs.txt, located in the main directory.   
