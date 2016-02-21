FROM centos:6
MAINTAINER Philipp Grigoryev <philipp.grigoryev@icsynergy.com>
RUN yum -y update
RUN yum -y install wget
ARG domain
RUN wget https://$domain-admin.okta.com/static/agents/ProvisioningAgent/OktaProvisioningAgent-01.00.11.x86_64.rpm
RUN yum -y localinstall OktaProvisioningAgent-01.00.11.x86_64.rpm 
RUN rm OktaProvisioningAgent-01.00.11.x86_64.rpm
WORKDIR /opt/OktaProvisioningAgent
RUN echo https://$domain.okta.com | ./configure_agent.sh
CMD jre/bin/java -Dagent_home=. -Xmx4096m -jar bin/OktaProvisioningAgent.jar -mode normal -configFilePath conf/OktaProvisioningAgent.conf
