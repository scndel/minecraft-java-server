FROM amazoncorretto:18.0.1-alpine3.15

WORKDIR /minecraft

COPY . .

RUN ln -s ./properties/server.properties server.properties

EXPOSE 25565
EXPOSE 25575

CMD [ "java", "-jar", "server.jar" ]