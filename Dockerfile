FROM python:2.7
MAINTAINER	mendhak <docker@mendhak.com>

ENV UDPPORT 5005
ADD udplistener.py /udplistener.py
CMD ["python", "-u","/udplistener.py"]

EXPOSE ${UDPPORT}
EXPOSE ${UDPPORT}/udp
