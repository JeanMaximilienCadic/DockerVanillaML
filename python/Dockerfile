FROM  nvidia/cuda:11.0-base

RUN apt update; apt install nano python3 python3-pip git -y

RUN ln -s /usr/bin/python3 /usr/bin/python
RUN ln -s /usr/bin/pip3 /usr/bin/pip

RUN pip install git+https://github.com/JeanMaximilienCadic/gnutools-python

WORKDIR /

CMD ["python"]
