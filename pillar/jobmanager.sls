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
    slaves:
        - host_name: flink-slave-1
          ip_addr: TO_BE_SET
        - host_name: flink-slave-2
          ip_addr: TO_BE_SET
        - host_name: flink-slave-3
          ip_addr: TO_BE_SET
    master:
        ssh:
            privkey: |
                -----BEGIN RSA PRIVATE KEY-----
                MIICXQIBAAKBgQClbLOuLPQMnmdQ92xtFY8J9FlIxauEs88GDf9rwUhmyGNQmRea
                VRr1XjFH+SGElMfwkQavPncv/NVBWzykBk94ipP9+UfmsJw1Y8KqwjXyN9alt68y
                /lO1TcSA4VAYRlzOXUPk40kKdt+iWvitJc0CCEhTGt7M1sN01llTkHF3rQIDAQAB
                AoGAPoxXdCgzLwJF9mtXZ/ea2hy2FboIHGkQgi2QwmGWyqZCRxtbvVMomlY/NAOT
                FNpcry1m5aQs1Mw4pjmlOC/apBG4yPXk6NPmGQgFCkuCMPXBxobmN7lJ/t56ijWZ
                HuiVGCtqJhLfOLEUq+lDcNgRZesvc7DmUWYIqQOk6Fp+hlECQQDSZ1cJJfr94RYU
                b4dL6BhfeE8PVtIB/sGjYMl8N9hpJlR/GmY7VnyR8LUGjNPA26u2cU9vk9k4BfTn
                8gx1WQPPAkEAyUYJ1tK3alfP3SrdiW6TDu3FG9ZOZSb0+6iYhlNrcWY9CL4pb6a6
                2e1Ytb7DlJtnoNYofB8qiRtQcn7KetqfwwJBAJwDGmtjKTglNa0TgbwMLj5kRCM4
                mmH2V/jgJKah9isJy++vUIzBNX81f9WKiN1hRXLzlBZFB/VdnVp7hTdiOMsCQAqa
                AdKq7rZPQceohlrC1EQpCgTZWO/DCYxn6QDKTBKBDB31xkD3S0hHVDDeh3bAaMjz
                /tXq3laydZ5SR2AJO/kCQQCqLgVchmhKI+3VOlsfAU3Lr05IDUx7YLnWAka8JGEL
                FIujvbpY41Tv8lcQH2T6hHUSC+aUdxhnWmiDdoGXfkml
                -----END RSA PRIVATE KEY-----
            pubkey: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQClbLOuLPQMnmdQ92xtFY8J9FlIxauEs88GDf9rwUhmyGNQmReaVRr1XjFH+SGElMfwkQavPncv/NVBWzykBk94ipP9+UfmsJw1Y8KqwjXyN9alt68y/lO1TcSA4VAYRlzOXUPk40kKdt+iWvitJc0CCEhTGt7M1sN01llTkHF3rQ== flink@flink-master

