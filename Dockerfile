FROM openjdk:8u111-jdk
MAINTAINER Magnus Larsson <magnus.larsson.ml@gmail.com>
# port expose will be config on run command
RUN mkdir -p /var/artifact/HMTE_docker/
ADD ./target/*.jar /var/artifact/HM_docker/spring-mvc-sample.jar

# Regarding settings of java.security.egd, see http://wiki.apache.org/tomcat/HowTo/FasterStartUp#Entropy_Source
ENTRYPOINT ["java","-jar","/var/artifact/HM_docker/spring-mvc-sample.jar"]