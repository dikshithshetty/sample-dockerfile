FROM fedora

EXPOSE 8080

RUN sudo yum install subversion-javahl
RUN sudo yum install java-11-openjdk-devel
RUN sudo yum install maven

