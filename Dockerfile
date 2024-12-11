FROM maven:3.8.4-openjdk-17

WORKDIR /app

COPY . .

RUN mvn package

CMD ["java", "-jar", "target/sqlitedb-1.0-SNAPSHOT.jar"]
