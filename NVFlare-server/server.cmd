docker run --rm -it --gpus all --memory=16g --name=flserver -v .:/workspace/ -w /workspace/ --ipc=host -p 127.0.0.1:8003:8003 -p 127.0.0.1:8002:8002 -p 127.0.0.1:5000:5000 nvflare/dev:v1.0 /bin/bash
