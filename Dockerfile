FROM amazoncorretto:11.0.16
WORKDIR /opt/
RUN yum install -y tar gzip && \
    curl -O https://dlcdn.apache.org//ant/binaries/apache-ant-1.10.15-bin.tar.gz && \
    tar -xzf apache-ant-1.10.15-bin.tar.gz && \
    rm apache-ant-1.10.15-bin.tar.gz && \
    mv apache-ant-1.10.15 ant && \
    yum autoremove -y tar gzip && \
    yum clean all && \
    rm -rf /var/cache/yum

ENV ANT_HOME=/opt/ant \   
    PATH=$PATH:$ANT_HOME/bin
