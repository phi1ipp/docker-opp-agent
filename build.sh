cd registration
docker build --build-arg domain=$1 --build-arg agent_version=$2 -t phi1ipp/opp-agent .
docker run -d --rm --name=agent phi1ipp/opp-agent

docker cp agent:/opt/OktaProvisioningAgent ../
docker rm -f agent

cd ../runtime
docker build -t opp-runtime .

####### optional, you can run it from your location ########
cd ..
docker run --rm -v $(pwd)/OktaProvisioningAgent:/opt/OktaProvisioningAgent agent-runtime
