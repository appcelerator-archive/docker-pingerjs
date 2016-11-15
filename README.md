# appcelerator/pingerjs

Simple service for testing purposes. Responds with `[<hostname>]`hello` to any `GET` request.
It's a slight variation on the [canonical Node.js example](https://nodejs.org/en/about/).

## Running pingerjs

    $ docker run -it --rm -p 3000:3000 --name pingerjs appcelerator/pingerjs

or

    $ docker service create -p 3000:3000 --name pingerjs appcelerator/pingerjs

## Scaling pingerjs

Try scaling scaling pingerjs up

    $ docker service scale pingerjs=3

Confirm all the replicas are running as the service scales to the desired amount

    $ docker service 
    $ docker service ls --filter name=pingerjs
    ID            NAME      REPLICAS  IMAGE                  COMMAND
    bfjh7nervm3z  pingerjs  3/3       appcelerator/pingerjs

Then test

    $ curl localhost:3000/
    [f0afaf6c5ea5] hello

Each time you curl, you should see a different hostname in the brackets of the response
as Docker automatically load balances requests among all the service replicas.


## Development

`bin/build.sh` - builds an alpine-based image: `appcelerator/pingerjs`

`bin/run.sh` - convenience script for `docker run ...`

`bin/service-start.sh` - convenience script for `docker service create ...`

`bin/service-stop.sh` - convenience script for `docker service rm ...`

