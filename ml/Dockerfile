FROM  jcadic/vanilla:torch

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install -yq libgl1-mesa-glx libglib2.0-0 
RUN pip install scikit-image==0.13.1 opencv-python matplotlib==3.3.4 jupyter sklearn numpy pyjson pyyaml pillow

WORKDIR /

CMD ["python"]
