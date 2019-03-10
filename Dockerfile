FROM debian:stretch-slim
MAINTAINER Ric Harvey <ric@ngineered.co.uk>

# Surpress Upstart errors/warning
RUN dpkg-divert --local --rename --add /sbin/initctl && ln -sf /bin/true /sbin/initctl

# Let the conatiner know that there is no tty
ENV DEBIAN_FRONTEND noninteractive

# Install boinc client
RUN apt-get update && apt-get install --yes --no-install-recommends --no-install-suggests boinc-client && apt-get clean && rm -rf /var/lib/apt/lists/*

User root

EXPOSE 31416 80 443

WORKDIR /var/lib/boinc-client

ENTRYPOINT ["/usr/bin/boinc", "--allow_remote_gui_rpc", "--attach_project"]
CMD ["www.worldcommunitygrid.org", "983535_e185433cff95d3c7a8a9d29926f3138a"]

