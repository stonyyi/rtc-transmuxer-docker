FROM       cine/mediatools-docker

MAINTAINER Thomas Shafer <thomas@cine.io>

WORKDIR /usr/src
RUN git clone git@github.com:cine-io/cine.git

# install base packages
WORKDIR /usr/src/cine
RUN npm install --production

# install rtc packages
WORKDIR /usr/src/cine/apps/rtc_transmuxer/
RUN npm install --production

WORKDIR /usr/src/cine

# TODO-ish ensure necessary secure environment variables.....

VOLUME ["/var/rtc-recordings"]

EXPOSE 8880

# start the rtc-transmuxer
CMD ./node_modules/.bin/coffee apps/rtc_transmuxer/index.coffee
