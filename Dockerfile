FROM python:3.11.1-alpine3.17
LABEL "Description"=""
LABEL maintainer="ypa@decgroupe.com"
ENV VERSION 3.11

RUN apk update
RUN apk add git
RUN apk add nano
RUN apk add make
RUN apk add inkscape
RUN apk add texlive
RUN apk add texlive-xetex
# https://pkgs.alpinelinux.org/package/edge/community/x86/texmf-dist-full
RUN apk add texmf-dist-full
RUN apk add ttf-opensans ttf-liberation ttf-dejavu
RUN apk add msttcorefonts-installer fontconfig && update-ms-fonts

# Copy local fonts in an indexable place
COPY fonts/* /usr/share/fonts/truetype/
# Update font cache
RUN fc-cache -f -v
