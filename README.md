# README #

* install _docker_ from [here](https://docs.docker.com/engine/installation/)
* clone the repository and *cd* into it
* execute *docker build --build-arg domain=_CustomerOktaName_ -t username/imagename:version*, i.e. **docker build --build-arg domain=partneretics -t phi1ipp/opp-agent**
* you'll be asked to visit a registration URL for the agent in the process of creating of the image
* after the image is created you can run it with _docker run -d username/imagename:version_, i.e. **docker run -d phi1ipp/opp-agent**