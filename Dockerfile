FROM openjdk:17.0.1-slim
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
COPY ./entrypoint.sh entrypoint.sh
COPY ./envFile envFile
COPY ./self-deleting.sh self-deleting.sh
RUN chmod +x entrypoint.sh
RUN chmod +x self-deleting.sh
ENTRYPOINT ["/entrypoint.sh"]
