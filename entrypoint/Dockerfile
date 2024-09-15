# ENTRYPOINT adalah instruksi untuk menentukan executable file yang akan dijalankan oleh container
# Biasanya ENTRYPOINT itu erat kaitannya dengan instruksi CMD
FROM golang:1.18-alpine

RUN mkdir /app/
COPY main.go /app/

EXPOSE 8080

ENTRYPOINT ["go", "run"]

CMD ["/app/main.go"]