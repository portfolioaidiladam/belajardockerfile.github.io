# Instruksi LABEL merupakan instruksi yang digunakan untuk menambahkan metadata ke dalam Docker Image yang kita buat
# Metadata adalah informasi tambahan, misal seperti nama aplikasi, pembuat, website, perusahaan, lisensi dan lain-lain
FROM alpine:3

# cara menambahkan informasi
LABEL author="Aidil Adam"
LABEL company="Baik Hati" website="https://www.aidiladam.com/"

# membuat directory hello
RUN mkdir hello
# bikin hello lalu disave kedalam folder hello dan file world.txt
RUN echo "Hello World" > "hello/world.txt"
# mengeksekusinya nanti ketika Docker Container berjalan, juga melihat dari folder hello dan file world.txt
CMD cat "hello/world.txt"