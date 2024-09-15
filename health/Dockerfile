# HEALTHCHECK adalah instruksi yang digunakan untuk memberi tahu Docker bagaimana untuk mengecek apakah Container
# masih berjalan dengan baik atau tidak
# Jika terdapat HEALTHCHECK, secara otomatis Container akan memili status health,
# dari awalnya bernilai starting, jika sukses maka bernilai healthy, jika gagal akan bernilai unhealty
FROM golang:1.18-alpine
# saya mau install
RUN apk --no-cache add curl
# run make directory app
RUN mkdir app

COPY main.go app

EXPOSE 8080
# ini yang paling penting
HEALTHCHECK --interval=5s --start-period=5s CMD curl -f http://localhost:8080/health
#
CMD go run app/main.go