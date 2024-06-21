# 베이스 이미지로 nginx를 사용합니다.
FROM nginx:latest

# 기본 패키지 업데이트 및 nginx 설치
RUN apt-get update && apt-get install -y nginx

# 기본 포트 설정 (선택 사항)
EXPOSE 80

# nginx 설정 파일 수정
# 기본 설정 파일은 이미지 내부에 존재합니다.
# 만약 추가적인 설정이 필요하다면 COPY 명령어를 사용하여 추가할 수 있습니다.
# 예를 들어, 커스텀 설정 파일을 추가하고자 한다면 다음과 같이 사용합니다.
# COPY nginx.conf /etc/nginx/nginx.conf

# 기본 index.html 파일 추가
ADD index.html /usr/share/nginx/html/index.html

# nginx 서비스 실행
CMD ["nginx", "-g", "daemon off;"]