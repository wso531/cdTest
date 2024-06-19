FROM amazoncorretto:17

COPY /target/ROOT.war ROOT.war

EXPOSE 5000

ENTRYPOINT ["java", "-Dfile.encoding=UTF-8", "-jar", "ROOT.war"]