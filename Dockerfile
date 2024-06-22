#FROM arm64v8/ubuntu:latest
#FROM ubuntu:latest
#RUN apt-get update
#RUN apt-get install apache2 -y
#COPY index.html /var/www/html
#EXPOSE 80
#CMD apachectl -DFOREGROUND

#FROM nginx:1.21.1
#COPY index.html /usr/share/nginx/html/index.html
#EXPOSE 80
#CMD ["nginx","-g","daemon off;"]


FROM ubuntu:latest

# 필요한 패키지 설치
RUN apt-get update && apt-get install -y apache2

# Apache 설정 파일 수정
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

COPY index.html /var/www/html
COPY hellow.html /var/www/html

# Apache 포트 개방
EXPOSE 80

# Apache 시작 명령어
CMD ["apache2ctl", "-D", "FOREGROUND"]