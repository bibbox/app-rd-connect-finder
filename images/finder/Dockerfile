# RD-Connect Finder (Liferay)
# VERSION 1.0
#

FROM FROM debian:jessie

RUN mkdir -p /opt/install  \
	&& wget -P /opt/install/ http://downloads.bibbox.org/rd-connect-liferay.tar.gz

ADD init.d/functions /etc/init.d/functions
ADD init.d/liferay /etc/init.d/liferay
ADD portal-setup-wizard.properties /opt/install/portal-setup-wizard.properties

WORKDIR /opt/install
RUN tar -xzf rd-connect-liferay.tar.gz

ADD scripts /opt/scripts
WORKDIR /opt/scripts
RUN chmod a+x *.sh

ENTRYPOINT ["/opt/scripts/entrypoint.sh"]