# README #

## Prereq
* install _docker_ from [here](https://docs.docker.com/engine/installation/)

## Building image
* clone the repository and *cd* into it
* execute (don't forget dot at the end) *docker build --build-arg domain=_CustomerOktaName_ -t username/imagename:version .* 
for example **docker build --build-arg domain=partneretics -t phi1ipp/opp-agent .**
* you'll be asked to visit a registration URL for the agent in the process of creating of the image
* to verify run _docker images_ you will see something like...

REPOSITORY           | TAG                | IMAGE ID           | CREATED            | SIZE
---------------------|--------------------|--------------------|--------------------|--------------
nmdoh/opp-agent      | latest             | f23195aeb054       | 5 minutes ago      | 672.5 MB
pgsql/opp-connector  | latest             | 1675f10cb207       | 3 hours ago        | 921.8 MB
phi1ipp/opp-pgsql    | latest             | 1675f10cb207       | 3 hours ago        | 921.8 MB

## Running
* after the image is created, run it with _docker run -d --name=agent username/imagename:version_ , i.e. **docker run -d --name=agent phi1ipp/opp-agent**
* to verify it's running execute _docker ps_

CONTAINER ID        |IMAGE               |COMMAND                  |CREATED             |STATUS              |PORTS               |NAMES
--------------------|--------------------|-------------------------|--------------------|--------------------|---------------------|
7f2aab473d63        |nmdoh/opp-agent     |"/bin/sh -c 'jre/bin/"   |7 minutes ago       |Up 7 minutes|                            |agent

* to stop/start it exec _docker stop agent_ or _docker start agent_