FROM tensorflow/tensorflow:1.13.1-gpu-py3-jupyter

RUN apt-get update \
    && apt-get install -y git

RUN mkdir /usr/codelab1 \
    && cd /usr/codelab1

RUN git clone https://github.com/mike-holcomb/curaeaidlhw-codelab1-skin-cancer-mnist.git
    
RUN cd /usr/codelab1/curaeaidlhw-codelab1-skin-cancer-mnist \
    && pip install -r requirements.txt
     
WORKDIR /usr/codelab1/curaeaidlhw-codelab1-skin-cancer-mnist

RUN mkdir /usr/codelab1/curaeaidlhw-codelab1-skin-cancer-mnist/data/