FROM salt-masterless:debian8
MAINTAINER "Paolo Smiraglia <paolo.smiraglia@gmail.com>"

# create Flink pillar dir
RUN mkdir -p /srv/pillar/flink

# update Salt configuration
ADD conf/pillar_roots.conf /etc/salt/minion.d/pillar_roots.conf
ADD conf/file_roots.conf /etc/salt/minion.d/file_roots.conf

# add pillar
ADD pillar/top.sls /srv/pillar/top.sls
ADD pillar/jobmanager.sls /srv/pillar/flink/jobmanager.sls
ADD pillar/taskmanager.sls /srv/pillar/flink/taskmanager.sls

# clone flink-formua
RUN git clone https://github.com/psmiraglia/flink-formula.git /srv/formulas/flink-formula

# populate bash history
RUN cd /root \
    && echo "salt-call --local state.apply flink.java,flink.ssh,flink.user,flink.binaries,flink.taskmanager" >> .bash_history \
    && echo "salt-call --local state.apply flink.java,flink.ssh,flink.user,flink.binaries,flink.jobmanager" >> .bash_history

# prepare demo
RUN curl http://www.gutenberg.org/cache/epub/1128/pg1128.txt > /tmp/kinglear.txt

# change working dir
WORKDIR /root

