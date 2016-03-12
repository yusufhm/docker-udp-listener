# mendhak/udp-listener
Docker image that listens on port 5005, outputs to log.

### Start it


    docker run -p 5005:5005/udp --name udp-listener mendhak/udp-listener

#### Test it

In another terminal:

    nc -u localhost 5005

And start sending data.
