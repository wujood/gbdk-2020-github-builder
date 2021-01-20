# Container image that runs your code
FROM gcc:4.9

COPY ./ /usr/src/gb-app
WORKDIR /usr/src/gb-app

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]