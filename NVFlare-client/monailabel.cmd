docker run -it --rm --gpus all --memory=70g --ulimit stack=67108864 --name=monailabel -v .:/workspace/ -w /workspace/ --ipc=host -p 8000:8000 -p 6006:6006 -p 5000:5000 monailabel/dev:v1.4 /bin/bash
