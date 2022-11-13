FROM alpine:latest
RUN apk update
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >>       /etc/apk/repositories
RUN apk add --no-cache liquibase \
    openjdk17 \ 
    wget \
    bash

RUN wget https://jdbc.postgresql.org/download/postgresql-42.5.0.jar

ADD src/main/resources/db/changelog /liquibase/db/changelog
ADD src/main/resources/liquibase.properties /liquibase
ADD liquibase-init.sh /liquibase

WORKDIR /liquibase

# RUN apk add --no-cache --upgrade bash

CMD ["./liquibase-init.sh"]