# 25.7.2019
# Dockerfile for containers behind proxy to access Internet through proxy server
# using debian and redsocks


#FROM debian:stretch
FROM debian:jessie
# must be debian:jessie because of different versions of iptables in docker and debian:buster
#FROM debian:buster

RUN echo 'building image docker-proxy-redsocks'

LABEL description="This image is for conteiners behind proxy to access Internet through proxy"

RUN apt-get update && apt-get install -y redsocks procps iptables

COPY redsocks.conf /root/.
COPY redsocks.sh /root/.
COPY iptables-redsocks-add.sh /root/.
COPY iptables-redsocks-rm.sh /root/.
RUN chmod +x /root/redsocks.sh
CMD /root/redsocks.sh
