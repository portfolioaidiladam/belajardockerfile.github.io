# ADD adalah instruksi yang dapat digunakan untuk menambahkan file dari source ke dalam folder destination di Docker Image
# Perintah ADD bisa mendeteksi apakah sebuah file source merupakan file kompres seperti tar.gz, gzip, dan lain-lain. Jika mendeteksi file source adalah berupa file kompress,
# maka secara otomatis file tersebut akan di extract dalam folder destination

FROM alpine:3
# saya akan bikin folder hello didalam docker imagenya
RUN mkdir hello
# semua yang berakhiran.txt semuanya akan kita add kedalam folder text
ADD text/*.txt hello
# harapannya didalam folder hello ada file world text .txt
CMD cat "hello/world.txt"