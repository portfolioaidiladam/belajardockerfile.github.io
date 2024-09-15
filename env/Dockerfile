# ENV adalah instruksi yang digunakan untuk mengubah environment variable, baik itu ketika tahapan build atau ketika jalan dalam Docker Container
# ENV yang sudah di definisikan di dalam Dockerfile bisa digunakan kembali dengan menggunakan sintaks ${NAMA_ENV}ENV adalah instruksi
# yang digunakan untuk mengubah environment variable, baik itu ketika tahapan build atau ketika jalan dalam Docker Container
# ENV yang sudah di definisikan di dalam Dockerfile bisa digunakan kembali dengan menggunakan sintaks ${NAMA_ENV}
FROM golang:1.18-alpine
# tentukan valuenya , defaultnya 8080
ENV APP_PORT=8080

RUN mkdir app
COPY main.go app

# kita kasih tau kita expose
EXPOSE ${APP_PORT}

CMD go run app/main.go