FROM openjdk:8u181-jdk-alpine3.8

ENV JBOSS_HOME /home/jboss-eap-7.1
ENV PATH $JBOSS_HOME/bin:$PATH
ENV JBOSS_USER='jboss'



USER root
RUN ( apk fix     --no-cache || echo 'cannot fix.'         )                                        && \
    ( apk upgrade --no-cache || echo 'cannot upgrade.'     )                                        && \
    ( apk cache   -v   clean || echo 'cannot clean cache.' )                                        && \
      apk add     --no-cache --update --upgrade                                                        \
                  busybox-suid bash wget ca-certificates unzip sudo openssh-client shadow  gettext         

#USER ${JBOSS_USER}

# Descomprimir fichero
ADD ./jboss/eap/7.1/jboss-eap-7.1.tar.gz /home/
ADD ./jboss/eap/7.1/scripts ${JBOSS_HOME}/bin
# Add postgres resource by default
ADD ./jboss/eap/7.1/assets ${JBOSS_HOME}/modules

# HTTP HTTPS ADMIN DEBUG
EXPOSE 8080 8443 9990 8787
CMD ["run-server.sh"]
#CMD ["/bin/bash"]