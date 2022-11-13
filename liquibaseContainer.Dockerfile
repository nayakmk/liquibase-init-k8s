FROM liquibase/liquibase:4.17.2

ADD src/main/resources/db/changelog /liquibase/changelog
ADD src/main/resources/liquibase.docker.properties /liquibase/changelog

CMD ["sh", "-c", "docker-entrypoint.sh --classpath=/liquibase/changelog --defaultsFile=liquibase.docker.properties update"]


https://jdbc.postgresql.org/download/postgresql-42.5.0.jar