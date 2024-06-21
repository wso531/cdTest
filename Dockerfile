#FROM arm64v8/ubuntu:latest
#RUN apt-get update
#RUN apt-get install apache2 -y
#COPY index.html /var/www/html
#EXPOSE 80
#CMD apachectl -DFOREGROUND

FROM nginx:1.21.1
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]