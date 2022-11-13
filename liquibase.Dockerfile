FROM liquibase/liquibase:4.17.2

ADD src/main/resources/db/changelog /liquibase/changelog
ADD src/main/resources/liquibase.docker.properties /liquibase/changelog

CMD ["sh", "-c", "docker-entrypoint.sh --classpath=/liquibase/changelog --defaultsFile=liquibase.docker.properties update"]