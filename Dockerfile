FROM ubuntu:trusty

MAINTAINER trakknar <trakknar@gmail.com>


# Install apache and php
RUN \ 
	apt-get update && \
	apt-get -y install apache2 php5 php5-mysql

ADD start.sh /start.sh

EXPOSE 80

# Default command launchs a script that starts Apache
CMD ["sh", "start.sh"]
