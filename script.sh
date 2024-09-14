# FROM Instruction
docker build -t aidiladam/from from

docker image ls

# RUN Instruction
docker build -t aidiladam/run run
docker image rm aidiladam/run

docker build -t aidiladam/run run --progress=plain --no-cache
docker image ls
docker image ls | grep aidiladam


# CMD Instruction
docker build -t aidiladam/command command

docker image inspect aidiladam/command

docker container create --name command aidiladam/command
# dia akan menjalankan CMD di file
docker container start command
docker container ls -a | grep aidiladam
# kalau mau liat lognya
docker container logs command
# dia akan menjalankan CMD di file
docker container start command
docker container start command
docker container logs command

# LABEL Instruction
docker build -t aidiladam/label label

docker image inspect aidiladam/label