FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install apache2 -y
# Apache 설정 파일 수정
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

ADD index.html /var/www/html/index.html
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
#FROM public.ecr.aws/amazoncorretto/amazoncorretto:11
#ARG JAR_FILE=target/*.jar
#COPY ${JAR_FILE} cdTest3-0.0.1-SNAPSHOT.jar
#ENTRYPOINT ["java","-jar","/cdTest3-0.0.1-SNAPSHOT.jar"]