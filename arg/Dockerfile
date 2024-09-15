# ARG merupakan instruksi yang digunakan untuk mendefinisikan variable yang bisa digunakan oleh pengguna untuk dikirim
# ketika melakukan proses docker build menggunakan perintah --build-arg key=value
# ARG hanya digunakan pada saat proses build time, artinya ketika berjalan dalam Docker Container,
# ARG tidak akan digunakan, berbeda dengan ENV yang digunakan ketika berjalan dalam Docker Container

FROM golang:1.18-alpine
#defaultnya main
ARG app=main

RUN mkdir app
COPY main.go app
# mau pindahin app/main.go ke app/${app}.go
RUN mv app/main.go app/${app}.go

EXPOSE 8080

ENV app=${app}
CMD go run app/${app}.go