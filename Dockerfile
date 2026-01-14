FROM mukeshjadav7696/centwebsrv:6
MAINTAINER Mukesh S Jadav <mukeshjadav7696@gmail.com>
LABEL Name="Mukesh Jadav"
LABEL EmailId="mukeshjadav7696@gmail.com"
#RUN service httpd start
WORKDIR /var/www/html/
ADD https://github.com/themewagon/feane/archive/refs/tags/v1.0.0.zip  .
RUN unzip feane-1.0.0.zip
RUN cp -rvp feane-1.0.0/* .
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
