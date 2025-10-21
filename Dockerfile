# Usar una imagen base con Java 17 (cambia si usas otra versión)
FROM openjdk:17-jdk-slim

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el jar compilado al contenedor
COPY target/Asistencias-0.0.1-SNAPSHOT.jar ./asistencias.jar

# Puerto expuesto (cambia si tu app usa otro puerto)
EXPOSE 8080

# Comando de ejecución (el .jar debe estar construido previamente)
ENTRYPOINT ["java", "-jar", "asistencias.jar"]
