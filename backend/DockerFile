# Étape 1 : Build avec Maven
FROM eclipse-temurin:21-jdk-alpine AS build
WORKDIR /app
# On copie le wrapper et le pom
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
# On donne les droits et on télécharge les dépendances (cache)
RUN chmod +x mvnw
RUN ./mvnw dependency:go-offline

# On copie le code et on build
COPY src ./src
RUN ./mvnw clean package -DskipTests

# Étape 2 : Runtime
FROM eclipse-temurin:21-jre-alpine
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
