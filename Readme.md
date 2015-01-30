# rtmp-authenticator

cine.io [Docker](https://docker.com/) container listens to websocket connections on 8880 and acts as a [WebRTC](http://www.webrtc.org/) endpoint for transmuxing an rtc stream to rtmp.

# Usage

```bash
$ docker run  -d --name rtc-transmuxer  -p 8880:8880 -v "/Users/thomas/work/tmp:/var/rtc-recordings" --link "rtmp-replicator:rtmp-replicator" --link "rtmp-authenticator:rtmp-authenticator" --link "kurento-media-server:kurento-media-server" -e MONGOHQ_URL="mongodb://192.168.1.139/cineio-development" -e NODE_ENV="development" -e PORT="8880" local/rtc-transmuxer-docker
```

# Notes

1. You'll have to change your mongodb url
