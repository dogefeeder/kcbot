FROM ubuntu:22.04
LABEL maintainer "alain <alainhe95@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update &&\ 
 apt-get install -y\ 
 python3 \ 
 python3-pip \ 
 git \ 
 curl \ 
 wget \ 
 vim \ 
 zsh \ 
 screen


RUN curl -fsSL http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz \
    | tar xvz --strip-components 1 \
    && ./configure --prefix=/usr \
    && make \
    && make install

RUN pip install TA-Lib jupyter pandas matplotlib numpy yfinance requests

