# ABM-Mesa-Demo
Basic demo for creating Agent Based Models using the Mesa framework and Python.

## Prerequisites

**Docker**:

- Docker Engine: For installation instructions, refer to the Docker documentation: https://docs.docker.com/engine/install/

## Installation

1. **Clone Repo and Change Directories**:
   ```bash
   git clone <this_repo>
   cd  this_repo/demo_model
    ```
2. **Build the Docker Image & Run the API**:
   ```bash
   docker-compose up -d
    ```
3. **Run Testing suite**:
   ```bash
   docker-compose run test  
   ```
The testing report is logged in pytest_logs.txt, located in the main directory.   
