ARG SOURCE_TAG=latest
FROM netboxcommunity/netbox:${SOURCE_TAG}
RUN apk add --no-cache patch 
COPY netbox/ /opt/netbox/netbox/
COPY topology.patch /tmp/
RUN patch --ignore-whitespace -d /opt/netbox/ -b -p0 -N -r- < /tmp/topology.patch

