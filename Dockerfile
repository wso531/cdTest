FROM public.ecr.aws/amazoncorretto/amazoncorretto:11
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} cdTest3-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/cdTest3-0.0.1-SNAPSHOT.jar"]