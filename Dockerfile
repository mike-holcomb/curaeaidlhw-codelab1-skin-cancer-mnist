FROM tensorflow/tensorflow:1.13.1-gpu-py3-jupyter

RUN mkdir -p /codelab1/data
    
COPY . /usr/codelab1
    
RUN pip install -r /codelab1/requirements.txt

WORKDIR /codelab1