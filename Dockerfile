FROM openjdk:17-jdk-oracle
MAINTAINER nayakmk.io
COPY build/libs/liquibase-init-k8s-0.0.1-SNAPSHOT.jar liquibase-init-k8s-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/liquibase-init-k8s-0.0.1-SNAPSHOT.jar"]