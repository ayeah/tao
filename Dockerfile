FROM tutum/lamp:latest
RUN rm -fr /app && mkdir /app && cd /app && wget http://o6qy1dbfx.bkt.clouddn.com/tao.zip && unzip tao.zip
EXPOSE 80 3306
CMD ["/run.sh"]
