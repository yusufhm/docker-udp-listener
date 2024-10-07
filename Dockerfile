FROM python

LABEL org.opencontainers.image.authors="mendhak <docker@mendhak.com>,yusufhm"

ENV UDPPORT=5140
ADD udplistener.py /udplistener.py
CMD ["python", "-u","/udplistener.py"]

EXPOSE ${UDPPORT}
EXPOSE ${UDPPORT}/udp
