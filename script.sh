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

# ADD Instruction
docker build -t aidiladam/add add

docker container create --name add aidiladam/add

docker container start add

docker container logs add

# COPY Instruction
docker build -t aidiladam/copy copy

docker container create --name copy aidiladam/copy

docker container start copy

docker container logs copy

# .dockerignore
docker build -t aidiladam/ignore ignore

docker container create --name ignore aidiladam/ignore

docker container start ignore

docker container logs ignore

# EXPOSE Instruction
docker build -t aidiladam/expose expose

docker image inspect aidiladam/expose

docker container create --name expose -p 8080:8080 aidiladam/expose

docker container start expose

docker container ls
# kalau mau ngetest pake curl
curl localhost:8080

docker container stop expose


# ENV Instruction
docker build -t aidiladam/env env

docker image inspect aidiladam/env
# kalau ada error no such image setelah masukkan perintah diatas : aidiladam/env ,
# check type envnya diatas ada yang ndak bener seperti evn
# langkah selanjutknya docker image rm aidiladam/evn dulu baru build ulang

#kalau mau mengubah portnya di containernya
docker container create --name env --env APP_PORT=9090 -p 9090:9090 aidiladam/env
docker container inspect env
docker container ls -a


docker container start env

docker container ls
# untuk memastikan
docker container logs env
# kalau mau ngetest pake curl
curl localhost:9090
docker container stop env


# VOLUME Instruction
docker build -t aidiladam/volume volume

docker image inspect aidiladam/volume

docker container create --name volume -p 8080:8080 aidiladam/volume

docker container start volume

docker container logs volume

docker container inspect volume

docker volume ls  #6fdf7b47a535657fc59299e9e86a29d664f5e15b372e67d6fa595a20ceebd236

# WORKDIR Instruction
docker build -t aidiladam/workdir workdir

docker container create --name workdir -p 8080:8080 aidiladam/workdir

docker container start workdir

docker container exec -i -t workdir /bin/sh
pwd