FROM jenkins/jenkins:2.118
USER root
COPY run.sh ./run.sh
RUN     curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-17.03.2-ce.tgz && tar --strip-components=1 -xvzf docker-17.03.2-ce.tgz -C /usr/local/bin && \
        chmod +x ./run.sh && \
        apt-get update -y && apt-get install -y sudo python-pip && \
        pip install awscli && \
        apt-get clean -y

ENTRYPOINT ["/bin/bash","-c","./run.sh"]
