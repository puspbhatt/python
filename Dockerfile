FROM centos
MAINTAINER Pusp Bhatt <pusprajbhatt2@gmail.com>
RUN export PATH=/usr/bin:$PATH
WORKDIR /var/tmp
RUN yum -y update
COPY python.py /var/tmp/python.py
COPY entrypoint.sh /var/tmp/entrypoint.sh
RUN chmod 775 entrypoint.sh
ENTRYPOINT  [ "./entrypoint.sh" ]

