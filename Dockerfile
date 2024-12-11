# Usar una imagen base de Maven con OpenJDK
FROM maven:3.8.4-openjdk-17-slim

# Crear un directorio de trabajo
WORKDIR /app

# Copiar el archivo pom.xml y el código fuente
COPY . .

# Construir la aplicación con Maven
RUN mvn clean install

# Exponer el puerto que usará la aplicación
EXPOSE 8080

# Comando para ejecutar la aplicación
CMD ["java", "-jar", "target/sqlitedb-1.0-SNAPSHOT.jar"]
