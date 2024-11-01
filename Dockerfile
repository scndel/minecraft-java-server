FROM amazoncorretto:23
WORKDIR /minecraft

COPY . .

RUN ln -s ./properties/server.properties server.properties

EXPOSE 25565
EXPOSE 25575

CMD ["java","-Xmx2G","-Xms512M","-jar", "server.jar","--nogui"]