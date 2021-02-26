FROM bastion.ps.example.com:5000/local_jeus8:b105067_BASE_orange
#FROM tomcat7-base:latest

ARG JEUS8_HOME=/opt/webserver    

RUN mkdir -p /app /logs/was 

RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime
  
# conf
#COPY domain.xml ${JEUS8_HOME}/conf/


# Direcotry Permission
RUN chmod 777 /logs /app/ -R \
  && chown -R 185:root /app/ /logs/
     
# Allow arbitrary
USER 185
  
EXPOSE 8080
   
#ENTRYPOINT ["catalina.sh", "run"]
