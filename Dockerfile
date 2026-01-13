FROM mukeshjadav7696/centwebsrv:6
MAINTAINER Mukesh S Jadav <mukeshjadav7696@gmail.com>
LABEL Name="Mukesh Jadav"
LABEL EmailId="mukeshjadav7696@gmail.com"
#RUN service httpd start
WORKDIR /var/www/html/
ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/global.zip  .
RUN unzip global
RUN cp -rvp global-master/* .
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
