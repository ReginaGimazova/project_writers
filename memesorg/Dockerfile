FROM maven:latest as builder

RUN mkdir /usr/src/app
WORKDIR /usr/src/app
COPY . .
RUN mvn install


FROM tomcat:latest

WORKDIR /usr/local/tomcat/webapps
RUN rm -r ROOT docs examples manager host-manager

COPY --from=builder /usr/src/app/target/ROOT.war /usr/local/tomcat/webapps

WORKDIR /usr/local/tomcat/bin

EXPOSE 8080
CMD ["sh", "catalina.sh", "run"]