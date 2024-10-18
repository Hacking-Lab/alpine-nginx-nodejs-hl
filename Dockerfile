FROM hackinglab/alpine-base-hl:3.2
LABEL maintainer="Ivan Buetler <ivan.buetler@hacking-lab.com>"

# Add the files
ADD root /

RUN apk add --no-cache --update \
        nodejs \
        npm \
        sudo \
        nginx \
        apache2-utils \
        openssl && \
	addgroup -S node && adduser -S node -G node && \
	chown -R nginx:www-data /var/lib/nginx && \
	chown -R node:node /opt/nodejs && \
        cd /opt/nodejs && \
        npm i && \
        npm i express --save && \
	rm -rf /var/cache/apk/* 

#USER node
# Expose the ports for nginx
EXPOSE 3000

