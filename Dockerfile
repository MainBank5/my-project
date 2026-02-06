FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY . .

RUN ./gradlew build

CMD ["java", "-cp", "build/classes/java/main", "com.example.Main"]
