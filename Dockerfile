# Base image
FROM nginx

# Specify working directory
WORKDIR /

# Setting environment variables
ENV NGINX_VERSION 1.11.10-1

# Perform updates and intall ping
RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y iputils-ping

# Add logging
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

# Required CMD command - only one is alowed (The last one wins)
CMD ["nginx", "-g", "daemon off;"]
