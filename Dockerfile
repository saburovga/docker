FROM centos
RUN yum install -y httpd
ADD index.html /var/www/html/index.html
CMD ["/usr/sbin/httpd", "-DFOREGROUND"]