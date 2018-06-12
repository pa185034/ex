FROM sdvl3prox001.td.teradata.com:7001/ties/alpine-java-ssh:0.1

ENV installDir /opt/teradata/@projectName@
ENV SERVICE_NAME @projectName@
ENV SERVICE_VERSION @projectVersion@

# install the service template
RUN mkdir -p $installDir 
ADD ./$SERVICE_NAME-all.jar $installDir/$SERVICE_NAME.jar
ADD log4j2.xml $installDir/log4j2.xml

# Enable Java to look up host names inside Docker
RUN echo 'hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4' >> /etc/nsswitch.conf

WORKDIR $installDir

EXPOSE 8080

# command to run in the container when it starts up
ENTRYPOINT ["java", "-Xmx200m", "-Djava.security.egd=file:/dev/./urandom", "-Dlog4j.configurationFile=/opt/teradata/@projectName@/log4j2.xml", "-jar", "@projectName@.jar"]
