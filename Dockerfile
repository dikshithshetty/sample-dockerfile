FROM fedora:31

EXPOSE 8080

RUN yum update -y
RUN yum install -y subversion-javahl
RUN yum install -y java-11-openjdk-devel
RUN yum install -y maven
RUN yum clean all

COPY pom.xml .
COPY src src

ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-11.0.9.11-0.fc31.x86_64

RUN mvn package

ENV JAVA_TOOL_OPTIONS -agentlib:jdwp=transport=dt_socket,address=8000,server=y,suspend=n
ENTRYPOINT ["sh", "-c", "java -jar target/svn-web-service-0.1.0.jar"]

