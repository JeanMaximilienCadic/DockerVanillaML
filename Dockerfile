FROM  nvidia/cuda:11.0-base

EXPOSE 22/tcp
EXPOSE 80/tcp
EXPOSE 8080/tcp
EXPOSE 8888/tcp
EXPOSE 5555/tcp
EXPOSE 443/tcp

RUN apt update; apt install nano net-tools openssh-server -y
WORKDIR /root/.ssh/

RUN ssh-keygen -b 2048 -t rsa -f  /root/.ssh/id_rsa
RUN echo "Port 22" >> /etc/ssh/sshd_config
RUN echo "service ssh start" >> /root/.bashrc
RUN echo "export TERM=xterm-256color" >> /root/.bashrc
RUN echo "service ssh start" >> /entrypoint.sh

WORKDIR /tmp
RUN wget  https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh
#COPY Anaconda3-2020.11-Linux-x86_64.sh /tmp
RUN sh Anaconda3-2020.11-Linux-x86_64.sh -b 
RUN rm Anaconda3-2020.11-Linux-x86_64.sh
ENV PATH /root/anaconda3/bin:$PATH

# Updating Anaconda packages
RUN conda update conda
RUN conda update anaconda
RUN conda update --all
RUN conda create -n py37 python=3.7
RUN echo "source activate py37" >> /root/.bashrc

RUN /root/anaconda3/envs/py37/bin/pip install gnutools-python



WORKDIR /root
