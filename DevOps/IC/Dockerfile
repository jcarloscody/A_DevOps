FROM ubuntu:latest

EXPOSE 8000

WORKDIR /app

ENV HOST=localhost PORT=5432

ENV USER=root PASSWOR=5432 DBNAME=root


COPY ./main main

ENTRYPOINT ["./main"]