###### building registration image #######
cd registration
docker build --build-arg domain=$1 --build-arg agent_version=$2 -t phi1ipp/opp-agent .

###### starting container #######
docker run -d --rm --name=agent phi1ipp/opp-agent

###### saving binaries from registration container #######
docker cp agent:/opt/OktaProvisioningAgent ../
docker rm -f agent

##### building runtime image #####
cd ../runtime
docker build -t opp-runtime .

####### here we start a runtime container with an external volume ########
cd ..
docker run --rm -v $(pwd)/OktaProvisioningAgent:/opt/OktaProvisioningAgent agent-runtime
