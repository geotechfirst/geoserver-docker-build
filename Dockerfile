FROM tomcat:9.0.115-jre17-temurin-noble
RUN apt-get update && apt-get install -y unzip
RUN cd /tmp && wget http://sourceforge.net/projects/geoserver/files/GeoServer/2.28.2/geoserver-2.28.2-war.zip && unzip geoserver-2.28.2-war.zip && mv geoserver.war /usr/local/tomcat/webapps
ENV CATALINA_OPTS "-server -Djava.awt.headless=true \
	-Xms768m -Xmx1560m -XX:+UseConcMarkSweepGC -XX:NewSize=48m"
