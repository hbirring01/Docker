# Base image
FROM nginx

# Specify working directory
WORKDIR /

# Perform updates and intall ping
RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y iputils-ping

