# README #

This docker image demonstrates, how to use OPP agent in a docker container, to be able to refresh the base image of the container in the future. The idea is, that the OPP agent binaries are placed on a mountable partition for future re-use.

Building consists of two stages:
1. Building original (registration) container and registering the agent to your Okta tenant
2. Creating lightweight runtime container, which can be refreshed/rebuilt, if the base image is changed (or any other reason)

# Building and running 
`./build.sh <your domain name> <agent version>`

* `you domain name` - FQDN of your domain, including .okta.com or .oktapreview.com or any other domain name
* `agent version` - full version of the agent (01.03.02 at the moment of writing)
