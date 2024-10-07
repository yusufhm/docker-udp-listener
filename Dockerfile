FROM python

LABEL org.opencontainers.image.authors="mendhak <docker@mendhak.com>,yusufhm"

ENV UDPPORT=5005
ADD udplistener.py /udplistener.py
CMD ["python", "-u","/udplistener.py"]
