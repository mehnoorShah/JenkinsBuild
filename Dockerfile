FROM tomcat:9.0-jdk17-temurin

COPY . /app
WORKDIR /app

RUN ./mvnw package -DskipTest

RUN cp target/*.jar /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]