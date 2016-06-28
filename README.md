# docker-flink-formula

This is a Docker image to run a simple demo that shows how to use SaltStack
to setup a Flink cluster.

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

2.  Run a Master node docker

        $ ./start-master.sh
        root@flink-master:~#

3.  Run a Slave node dockers

        $ ./start-slave.sh 1
        root@flink-slave-1:~#

        $ ./start-slave.sh 2
        root@flink-slave-2:~#

        $ ./start-slave.sh 3
        root@flink-slave-3:~#

## Take some notes

In `flink-master` docker, run the following command

    $ ip addr show eth0
    ...
        inet 172.17.0.2/16 scope global eth0
    ...

and take a note about the IP address. Do the same procedure in each
`flink-slave-*` docker

    $ ip addr show eth0
    ...
        inet 172.17.0.3/16 scope global eth0
    ...

At the end, we should have something like that

    flink-master  -> 172.17.0.2
    flink-slave-1 -> 172.17.0.3
    flink-slave-2 -> 172.17.0.4
    flink-slave-3 -> 172.17.0.5

## Configure the pillars

On the `flink-master` docker, edit the `slaves` section in the master's pillar
file (`/srv/pillar/flink/jobmanager.sls`) by using the collected
information

    flink:
        [...]
        slaves:
            - host_name: flink-slave-1
              ip_addr: 172.17.0.3
            - host_name: flink-slave-2
              ip_addr: 172.17.0.4
            - host_name: flink-slave-3
              ip_addr: 172.17.0.5
        [...]


On each `flink-slave-*` docker, edit the `master` section in the slave's
pillar file (`/srv/pillar/flink/taskmanager.sls`) by using the collected
information

    flink:
        [...]
        master:
            host_name: flink-master
            ip_addr: 172.17.0.2
        [...]

## Install and configure Flink with SaltStack

On the `flink-master` docker, execute

    $ salt-call --local state.apply flink.java,flink.ssh,flink.user,flink.binaries,flink.jobmanager

On each `flink-slave-*` docker, execute

    $ salt-call --local state.apply flink.java,flink.ssh,flink.user,flink.binaries,flink.taskmanager

The documentation about the `flink-formula` states can be found in the
[GitHub repo](https://github.com/psmiraglia/flink-formula).

## Run the cluster

On the `flink-master` docker, run

    $ su - flink
    $ start-cluster.sh

