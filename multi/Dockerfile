# Saat kita membuat Dockerfile dari base image yang besar, secara otomatis ukuran Image nya pun akan menjadi besar juga
# Oleh karena itu, usahakan selalu gunakan base image yang memang kita butuhkan saja, jangan terlalu banyak menginstall
# fitur di Image padahal tidak kita gunakan

# buid stagenya pakai alias docker file
FROM golang:1.18-alpine as builder
# set working directroynya
WORKDIR /app/
# kita akan copy mainnya
COPY main.go /app/
# untuk melakukan proses kompilasi main.go menjadi binary file  app/main.go
RUN go build -o /app/main /app/main.go

# buid stagenya terakhir
FROM alpine:3
WORKDIR /app/
COPY --from=builder /app/main /app/
# karena kita tau main itu binary file
CMD /app/main