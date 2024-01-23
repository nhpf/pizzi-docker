This repository demonstrates how to dockerize different Python modules with a single requirements.txt file.
Each module is encapsulated within its own Docker container, and the script inside each module simply prints the number of the module as shown below:

```
Hello from Module 3! 🔥
```

# Project Structure

```
.
├── build_containers.sh
├── docker-compose.yml
├── Dockerfile
│
├── mod1
│   └── main.py
│
├── mod2
│   └── main.py
│
├── mod3
│   └── main.py
│
└── requirements.txt
```

# Usage

Execute the `build_containers.sh` script to build Docker images and run containers for each module.

```bash
chmod +x build_containers.sh
./build_containers.sh
```

This script iterates over the modules (mod1, mod2, mod3), building Docker images with the specified Dockerfile, and runs containers for each module using Docker Compose v1.

