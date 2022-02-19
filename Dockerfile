# Importing Debian image from Dockerhub
FROM debian

# Label for metadata.
LABEL "sistemas-informaticos"="practica-primer-docker"
LABEL version="1.0"
LABEL description="Practice on docker"
LABEL maintainer="erosarosario@cifpfbmoll.eu, noecrespi@cifpfbmoll.eu"

# Set timezone to have the same time mark in host and container.
ENV TZ=Europe/Madrid

# Update the system and install some utilities to work with shell
RUN apt-get update -qq >/dev/null && apt-get install -y -qq procps telnet apache2 php7.3 -qq >/dev/null

# HTML server directory
WORKDIR /var/www/html
COPY . /var/www/html/

RUN mkdir /data && chown -R www-data /data && chmod 755 /data & chmod 755 -R /var/www/html/

RUN a2enmod php7.3

# Script to start the server
CMD  ["./entrypoint.sh"]

