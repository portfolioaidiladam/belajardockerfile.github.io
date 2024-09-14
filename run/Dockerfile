# RUN adalah sebuah instruksi untuk mengeksekusi perintah di dalam image pada saat build stage.
# Hasil perintah RUN akan di commit dalam perubahan image tersebut,
# jadi perintah RUN akan dieksekusi pada saat proses docker build saja,
# setelah menjadi Docker Image, perintah tersebut tidak akan dijalankan lagi.
FROM alpine:3

# membuat directory hello
RUN mkdir hello
# bikin hello lalu disave kedalam folder hello dan file world.txt
RUN echo "Hello World" > "hello/world.txt"
# melihat dari folder hello dan file world.txt
RUN cat "hello/world.txt"