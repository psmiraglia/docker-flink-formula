flink:
    conf:
        jobmanager.heap.mb: 256
        jobmanager.rpc.address: flink-master
        jobmanager.rpc.port: 6123
        jobmanager.web.port: 8081
        parallelism.default: 1
        taskmanager.heap.mb: 512
        taskmanager.memory.preallocate: false
        taskmanager.numberOfTaskSlots: 2
        env.java.home: /opt/java
    master:
        host_name: flink-master
        ip_addr: TO_BE_SET
        ssh:
            pubkey: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQClbLOuLPQMnmdQ92xtFY8J9FlIxauEs88GDf9rwUhmyGNQmReaVRr1XjFH+SGElMfwkQavPncv/NVBWzykBk94ipP9+UfmsJw1Y8KqwjXyN9alt68y/lO1TcSA4VAYRlzOXUPk40kKdt+iWvitJc0CCEhTGt7M1sN01llTkHF3rQ== flink@flink-master

