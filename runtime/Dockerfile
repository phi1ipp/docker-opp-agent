FROM openjdk:8-jre-alpine
MAINTAINER Philipp Grigoryev <philipp.grigoryev@icsynergy.com>

#RUN mkdir -p /opt/OktaProvisioningAgent
WORKDIR /opt/OktaProvisioningAgent
CMD java -Dagent_home=. -Xmx4096m -jar bin/OktaProvisioningAgent.jar -mode normal -configFilePath conf/OktaProvisioningAgent.conf
