FROM fedora

EXPOSE 8080

RUN yum install -y subversion-javahl
RUN yum install -y java-11-openjdk-devel
RUN yum install -y maven

