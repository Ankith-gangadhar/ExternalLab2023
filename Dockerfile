FROM ubuntu:xenial #INSTALL ubuntu image
RUN apt-get update #get the updates and install apache2 php libapache2-mod-php
RUN apt-get install apache2 -y #copy the file from current directory to respective directory 
ADD . /var/www/html #Expose port 80
EXPOSE 80 #Restart apache2
ENTRYPOINT apachectl -D FOREGROUND



