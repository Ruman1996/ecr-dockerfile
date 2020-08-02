# FROM ubuntu:18.04

# # Install dependencies
# RUN apt-get update && \
#  apt-get -y install apache2 && \
#  apt-get -y install default-jdk

# # Install apache and write hello world message
# RUN echo 'Hello World! change pipeline' > /var/www/html/index.html

# # Configure apache
# RUN echo '. /etc/apache2/envvars' > /root/run_apache.sh && \
#  echo 'mkdir -p /var/run/apache2' >> /root/run_apache.sh && \
#  echo 'mkdir -p /var/lock/apache2' >> /root/run_apache.sh && \ 
#  echo '/usr/sbin/apache2 -D FOREGROUND' >> /root/run_apache.sh && \ 
#  chmod 755 /root/run_apache.sh

# EXPOSE 80

# CMD /root/run_apache.sh
# FROM scratch
# COPY hello /
# CMD ["/hello"]

FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y nginx
EXPOSE 80/tcp
RUN touch /var/www/html/ruman.html
RUN echo 'Hello World! change pipeline' > /var/www/html/ruman.html
CMD ["nginx", "-g daemon off;"]
