# rtc-transmuxer

cine.io [Docker](https://docker.com/) container listens to websocket connections on 8880 and acts as a [WebRTC](http://www.webrtc.org/) endpoint for the kurento-media-server.

# Usage

```bash
docker run  -d --name rtc-transmuxer -h rtc-endpoint-dev  -p 8880:80  --link "input-to-rtmp-streamer:input-to-rtmp-streamer" --link "kurento-media-server:kurento-media-server" -e MONGOHQ_URL="mongodb://192.168.1.139/cineio-development" -e NODE_ENV="development" -e PORT="80" local/rtc-transmuxer-docker
```

# Notes

1. You'll have to change your mongodb url
