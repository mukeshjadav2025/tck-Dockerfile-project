FROM mukeshjadav7696/centwebsrv:6
MAINTAINER Mukesh S Jadav <mukeshjadav7696@gmail.com>
LABEL Name="Mukesh Jadav"
LABEL EmailId="mukeshjadav7696@gmail.com"
#RUN service httpd start
WORKDIR /var/www/html/
ADD https://html5up.net/dimension/download .
RUN rm -rf download1
RUN unzip download -d download1
RUN cp -rvp download1/* .
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
