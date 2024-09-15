# EXPOSE adalah instruksi untuk memberitahu bahwa container akan listen port pada nomor dan protocol tertentu
# Instruksi EXPOSE tidak akan mempublish port apapun sebenarnya, Instruksi EXPOSE hanya digunakan sebagai
# dokumentasi untuk memberitahu yang membuat Docker Container, bahwa Docker Image ini akan menggunakan port
# tertentu ketika dijalankan menjadi Docker Container

FROM golang:1.18-alpine

RUN mkdir app
#copy kedalam folder app
COPY main.go app

EXPOSE 8080
#kita akan jalankan
CMD go run app/main.go