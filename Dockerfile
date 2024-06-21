FROM ubuntu:focal
RUN apt update; DEBIAN_FRONTEND=noninteractive apt install tzdata							#일단 상호작용을 무시하고 tzdata를 설치해주고
RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime	#심볼릭 링크를 걸어준다. 대소문자 주의 !!
RUN apt install -y apache2
ADD index.html /var/www/html/index.html
EXPOSE 80/tcp
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
#FROM public.ecr.aws/amazoncorretto/amazoncorretto:11
#ARG JAR_FILE=target/*.jar
#COPY ${JAR_FILE} cdTest3-0.0.1-SNAPSHOT.jar
#ENTRYPOINT ["java","-jar","/cdTest3-0.0.1-SNAPSHOT.jar"]