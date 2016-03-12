# mendhak/udp-listener
Docker image that listens on port 5005, outputs to log.

### Start it


    docker run -p 5005:5005/udp --name tcp-udp-test mendhak/udp-listener


#### Test it

docker logs

```
$ nc -u (CONTAINER_IP_ADDRESS) 5678
> Hello world # Same text will be displayed on the container log.
```
