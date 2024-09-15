# USER adalah instruksi yang digunakan untuk mengubah user atau user group ketika Docker Image dijalankan
# Secara default, Docker akan menggunakan user root, namun pada beberapa kasus, mungkin ada aplikasi yang
# tidak ingin jalan dalam user root, maka kita bisa mengubah user nya menggunakan instruksi USER

FROM golang:1.18-alpine

RUN mkdir /app

RUN addgroup -S pzngroup
# menambah user
RUN adduser -S -D -h /app pznuser pzngroup
# ubah ownership dari folder app pznuser ke pzngroup
RUN chown -R pznuser:pzngroup /app
# switch ke user
USER pznuser

COPY main.go /app

EXPOSE 8080
CMD go run /app/main.go