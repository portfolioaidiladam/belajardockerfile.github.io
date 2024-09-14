# CMD atau Command, merupakan instruksi yang digunakan ketika Docker Container berjalan
# CMD tidak akan dijalankan ketika proses build, namun dijalankan ketika Docker Container berjalan

FROM alpine:3

# membuat directory hello
RUN mkdir hello
# bikin hello lalu disave kedalam folder hello dan file world.txt
RUN echo "Hello World" > "hello/world.txt"
# mengeksekusinya nanti ketika Docker Container berjalan, juga melihat dari folder hello dan file world.txt
CMD cat "hello/world.txt"