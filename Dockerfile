FROM python:3.7-alpine
LABEL "Description"=""
LABEL maintainer="y.papouin@dec-industrie.com"
ENV VERSION 3.7

RUN apk update
RUN apk add git
RUN apk add make
RUN apk add make
RUN apk add inkscape
RUN apk add texlive
RUN apk add texmf-dist-fontsextra