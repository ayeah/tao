FROM centurylink/apache-php:latest
MAINTAINER ayeah

# Install packages
RUN apt-get update && \
 apt-get -y install unzip

# Download Wordpress into /app
RUN rm -fr /app && mkdir /app && \
 curl -L -O http://o6qy1dbfx.bkt.clouddn.com/tao.zip && \
 unzip tao.zip -d /app && \
 rm tao.zip

EXPOSE 80
CMD ["/run.sh"]
