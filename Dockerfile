FROM tutum/lamp:latest

RUN  apt-get update \
  && apt-get install -y wget \
  && apt-get install -y unzip
  
RUN rm -fr /app 
RUN mkdir /app 
RUN cd /app 
RUN wget http://o6qy1dbfx.bkt.clouddn.com/tao.zip
RUN unzip tao.zip

EXPOSE 80 3306

CMD ["/run.sh"]
