FROM alpine:latest 
MAINTAINER Ric Harvey <@ric__harvey> 


# Install boinc client
RUN apk update && apk upgrade
RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing boinc tzdata

User root

# BOINC RPC port
EXPOSE 31416 80 443

WORKDIR /var/lib/boinc

ENTRYPOINT ["/usr/bin/boinc", "--allow_remote_gui_rpc", "--attach_project"]
CMD ["www.worldcommunitygrid.org", "983535_e185433cff95d3c7a8a9d29926f3138a"]

