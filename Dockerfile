FROM ubuntu:16.04

MAINTAINER Minh-Tuan Pham <tuanti1997qn@gmail.com>

ENV TERM xterm-256color

# pre-require 
RUN echo 'force_color_prompt=yes' >> ~/.bashrc
RUN apt-get update
RUN apt-get install git wget flex bison gperf python python-pip python-setuptools python-serial python-click python-cryptography python-future python-pyparsing python-pyelftools cmake ninja-build ccache

# add language pack
RUN apt-get install language-pack-id
ENV LC_ALL en_US.UTF-8
ENV LC_CTYPE en_US.UTF-8
ENV LANG en_US.UTF-8

# install esp-idf
RUN cd ~/esp
RUN git clone --recursive https://github.com/espressif/esp-idf.git
RUN cd ~/esp/esp-idf
RUN ./install.sh
RUN . $HOME/esp/esp-idf/export.sh
RUN echo '. $HOME/esp/esp-idf/export.sh' >> ~/.bash_profile
RUN cd ~

CMD [ "/bin/bash" ]
