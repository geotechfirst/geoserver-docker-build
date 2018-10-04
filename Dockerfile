FROM tomcat:8.0-jre8-alpine
RUN apk --update add ttf-dejavu
RUN cd /tmp && wget http://sourceforge.net/projects/geoserver/files/GeoServer/2.14.0/geoserver-2.14.0-war.zip && unzip geoserver-2.14.0-war.zip && mv geoserver.war /usr/local/tomcat/webapps
ENV CATALINA_OPTS "-server -Djava.awt.headless=true \
	-Xms768m -Xmx1560m -XX:+UseConcMarkSweepGC -XX:NewSize=48m"
