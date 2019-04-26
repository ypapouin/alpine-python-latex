FROM python:3.7-alpine
LABEL "Description"=""
LABEL maintainer="y.papouin@dec-industrie.com"
ENV VERSION 3.7

RUN apk update
RUN apk add git
RUN apk add make
RUN apk add inkscape
RUN apk add texlive
RUN apk add texmf-dist-fontsextra
RUN apk add texmf-dist-full
RUN apk add ttf-opensans ttf-liberation ttf-dejavu
RUN apk add msttcorefonts-installer fontconfig && update-ms-fonts

# Copy local fonts in an indexable place
COPY fonts/* /usr/share/fonts/truetype/
# Update font cache
RUN fc-cache -f -v
