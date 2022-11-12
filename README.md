## Build IMAGE_NAME by Dockerfile
docker build -t IMAGE_NAME .  
## Create a container
docker run -p 8081:8081 -v LOCAL_DIRECTORY:/root -idt IMAGE_NAME  
## Run jupyter-notebook
cd /root  
screen  
jupyter notebook --port=8081 --ip=* --allow-root  
