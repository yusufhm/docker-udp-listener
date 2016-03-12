FROM ubuntu:latest
MAINTAINER	mendhak <docker@mendhak.com>

ADD run.sh /run.sh
CMD ["/run.sh"]

EXPOSE 5005/udp
