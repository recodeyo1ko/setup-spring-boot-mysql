FROM openjdk:17-jdk-slim

RUN apt-get update && \
    apt-get install -y maven && \
    apt-get clean

WORKDIR /app

COPY app/pom.xml /app/
RUN mvn dependency:go-offline

COPY app/src /app/src

RUN mvn clean package -DskipTests

EXPOSE 8080

# ENTRYPOINT ["java", "-jar", "/app/app/target/bizcomu-3_1-0.0.1-SNAPSHOT.jar"]
# ENTRYPOINT [ "sleep", "infinity" ]
