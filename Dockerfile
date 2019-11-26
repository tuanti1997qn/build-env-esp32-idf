FROM ubuntu:16.04

MAINTAINER Minh-Tuan Pham <tuanti1997qn@gmail.com>

ENV TERM xterm-256color

RUN echo 'force_color_prompt=yes' >> ~/.bashrc
RUN apt-get install git wget flex bison gperf python python-pip python-setuptools python-serial python-click python-cryptography python-future python-pyparsing python-pyelftools cmake ninja-build ccache
RUN apt-get install language-pack-id
ENV LC_ALL en_US.UTF-8
ENV LC_CTYPE en_US.UTF-8
ENV LANG en_US.UTF-8

CMD [ "/bin/bash" ]
