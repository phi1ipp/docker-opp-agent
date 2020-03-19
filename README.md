# README #

This docker image demonstrate how to use OPP agent in a docker container to be able to refresh the base image of the container in the future. The idea is that the binaries are placed on a mountable partition for future use.

Buildin consists of two stages:
1. Building original (registration) container and registering the agent to your Okra tenant
2. Creating lightweight runtime container, which can be refreshed if the base image is changed

# Building and running 
`./build.sh <your domain name> <agent version>`

`you domain name` - FQDN of your domain, including .okta.com or .oktapreview.com or any other domain name
`agent version` - full version of the agent (01.03.02 at the moment of writing)
