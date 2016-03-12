# mendhak/udp-listener
Docker image that listens on UDP port 5005, outputs to log.

### Start it

By default, listens on port 5005

    docker run -p 0.0.0.0:5005:5005 -p 0.0.0.0:5005:5005/udp --name udp-listener mendhak/udp-listener

You can make it listen on another port

    docker run -p 0.0.0.0:4444:4444 -p 0.0.0.0:4444:4444/udp -e UDPPORT=4444 --name udp-listener mendhak/udp-listener

#### Test it

In another terminal:

    nc -u localhost 5005

And start sending data.


### Docker Compose

```
udp:
  container_name: my-udp-listener
  image: mendhak/udp-listener
  environment:
    - UDPPORT=4001
  ports:
  - "0.0.0.0:4001:4001"
  - "0.0.0.0:4001:4001/udp"

```

View its logs:

    docker logs my-udp-listener
