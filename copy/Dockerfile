# COPY adalah instruksi yang dapat digunakan untuk menambahkan file dari source ke dalam folder destination di Docker Image

FROM alpine:3

RUN mkdir hello
# menambahkan file world.txt ke folder hello
COPY text/*.txt hello

CMD cat "hello/adam.txt"