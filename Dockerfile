FROM debian:jessie
MAINTAINER Ric Harvey <ric@ngineered.co.uk>

# Surpress Upstart errors/warning
RUN dpkg-divert --local --rename --add /sbin/initctl && ln -sf /bin/true /sbin/initctl

# Let the conatiner know that there is no tty
ENV DEBIAN_FRONTEND noninteractive

# Install boinc client
RUN apt-get update && apt-get install --yes --no-install-recommends --no-install-suggests boinc-client && apt-get clean && rm -rf /var/lib/apt/lists/*

ENV project www.worldcommunitygrid.org
ENV weak_key 983535_e185433cff95d3c7a8a9d29926f3138a

ONBUILD VOLUME /data
WORKDIR /data

CMD ["/usr/bin/boinc", "--attach_project", $project, $weak_key]
