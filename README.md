# ABM-Mesa-Demo
Basic demo for creating Agent Based Models using the Mesa framework and Python.


### Build and Run the Docker Virtual Env Container

1. **Build the Docker Image**:
   ```sh
   docker build -t my-python-env .
   ```

2. **Run the Docker Container**:
   ```sh
   docker run -it my-python-env
   ```

This will start a Docker container with a virtual Python environment set up, and you will be dropped into a bash shell within the container. You can then activate the virtual environment manually and run any Python scripts or commands you need.


### Manual Activation in the Container
Once inside the container, activate the virtual environment:
```sh
source venv/bin/activate
```
