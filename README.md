# docker-flink-formula

## Prerequisites

This Docker image is based on
[`salt-masterless`](https://github.com/psmiraglia/docker-salt-masterless).

Before building `docker-flink-formula`, make sure you have `salt-masterless`
locally available.

    $ git clone https://github.com/psmiraglia/docker-salt-masterless.git
    $ cd docker-salt-masterless
    $ make

## How to use `docker-flink-formula`

1.  Build the image

        $ make

2.  Execute the Master node

        $ ./start-master.sh

    Resulting Docker will use `flink-master` as hostname.

3.  Execute the Slave node(s)

        $ ./start-slave.sh <N>

    Resulting Docker will use `flink-slave-<N>` as hostname.

