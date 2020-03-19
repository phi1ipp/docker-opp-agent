FROM centos:7
MAINTAINER Philipp Grigoryev <philipp.grigoryev@icsynergy.com>


ARG domain
ARG agent_version

RUN curl $(echo "https://${domain}" | sed -r 's/\./-admin\./')/static/agents/ProvisioningAgent/OktaProvisioningAgent-${agent_version}.x86_64.rpm --output OktaProvisioningAgent-${agent_version}.x86_64.rpm && yum -y localinstall OktaProvisioningAgent-${agent_version}.x86_64.rpm && rm OktaProvisioningAgent-${agent_version}.x86_64.rpm

WORKDIR /opt/OktaProvisioningAgent
RUN  echo "https://${domain}" | /opt/OktaProvisioningAgent/configure_agent.sh
CMD jre/bin/java -Dagent_home=. -Xmx4096m -jar bin/OktaProvisioningAgent.jar -mode normal -configFilePath conf/OktaProvisioningAgent.conf
