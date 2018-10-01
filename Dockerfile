FROM centos
RUN yum install -y httpd
RUN yum install -y php
RUN yum install -y php-mysql
ADD index.html /var/www/html/index.html
ADD test.php /var/www/html/test.php
CMD ["/usr/sbin/httpd", "-DFOREGROUND"]