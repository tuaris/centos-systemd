############################################################
# Dockerfile to build Centos container images with Systemd
# Based on Centos 7
############################################################

# Set the base image to Centos
FROM centos
MAINTAINER Daniel Morante
ENV container docker
 
# Udate RPM Packages
RUN yum update -y; yum clean all

##################### INSTALLATION END #####################
VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/sbin/init"]