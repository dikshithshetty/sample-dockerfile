FROM fedora

EXPOSE 8080

RUN yum install subversion-javahl
RUN yum install java-11-openjdk-devel
RUN yum install maven

