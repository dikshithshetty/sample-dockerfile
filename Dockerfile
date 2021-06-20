FROM fedora:33
EXPOSE 8080
RUN yum update -y
RUN yum install -y subversion-javahl
RUN yum install -y java-11-openjdk-devel
RUN yum install -y maven
RUN yum clean all
