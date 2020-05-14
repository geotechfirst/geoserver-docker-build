FROM tomcat:8.0-jre8-alpine
RUN apk --update add ttf-dejavu
RUN cd /tmp && wget -O geoserver-2.17.0-war.zip https://sourceforge.net/projects/geoserver/files/GeoServer/2.17.0/geoserver-2.17.0-war.zip/download && unzip geoserver-2.17.0-war.zip && mv geoserver.war /usr/local/tomcat/webapps
ENV CATALINA_OPTS "-server -Djava.awt.headless=true \
	-Xms768m -Xmx1560m -XX:+UseConcMarkSweepGC -XX:NewSize=48m"
