FROM maven:latest as warfile
WORKDIR /usr/src/app
COPY pom.xml .
RUN mkdir /usr/src/app
COPY . .
RUN mvn install


FROM tomcat:latest

WORKDIR /usr/local/tomcat/webapps
RUN rm -r ROOT docs examples manager host-manager

COPY --from=builder /usr/src/app/target/ROOT.war /usr/local/tomcat/webapps

WORKDIR /usr/local/tomcat/bin

EXPOSE 8081
CMD ["sh", "catalina.sh", "run"]