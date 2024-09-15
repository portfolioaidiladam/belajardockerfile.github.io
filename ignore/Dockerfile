# Saat kita melakukan ADD atau COPY dari file source, pertama Docker akan membaca file yang bernama .dockerignore
# File .dockerignore ini seperti file .gitignore, dimana kita bisa menyebutkan file-file apa saja yang ingin kita ignore (hiraukan)

FROM alpine:3

RUN mkdir hello
# menambahkan file world.txt ke folder hello
COPY text/* hello
# untuk melihat folder hello
CMD ls -l hello