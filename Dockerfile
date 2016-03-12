FROM python:2.7
MAINTAINER	mendhak <docker@mendhak.com>


ADD udplistener.py /udplistener.py
CMD ["python", "-u","/udplistener.py"]

EXPOSE 5005
EXPOSE 5005/udp
