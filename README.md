# golang-with-docker

This challenge was create a Docker image with Golang returning "Full Cycle Rocks!".

Requirement:
 - The image must have less than 2MB.

Solution: 
 I created a Dockerfile using Multistage building to compile the Golang program and then use this on a new image using scratch to run the application.

Docker Image: https://hub.docker.com/repository/docker/sapmartins/fullcycle/general