FROM amazoncorretto:18.0.1-alpine3.15

WORKDIR /minecraft

ADD . .

CMD [ "java", "-jar", "server.jar" ]