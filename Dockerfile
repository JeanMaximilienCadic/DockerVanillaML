FROM  nvidia/cuda:11.0-base

EXPOSE 22/tcp
EXPOSE 80/tcp
EXPOSE 8080/tcp
EXPOSE 8888/tcp
EXPOSE 5555/tcp
EXPOSE 443/tcp

RUN apt update; apt install nano net-tools openssh-server sudo -y
RUN adduser develop; addgroup develop sudo

RUN su develop

WORKDIR /home/develop/.ssh/

RUN ssh-keygen -b 2048 -t rsa -f  /home/develop/.ssh/id_rsa
COPY id_rsa.pub /home/develop/.ssh/authorized_keys
RUN echo "Port 22" >> /etc/ssh/sshd_config
RUN echo "service ssh start" >> /root/.bashrc
RUN echo "export TERM=xterm-256color" >> /home/develop/.bashrc
RUN echo "service ssh start" >> /entrypoint.sh
WORKDIR /home/develop

