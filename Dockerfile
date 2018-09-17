#
# Builds container to capture the links application
# 
# 2015-03-11 BJS : Created and tested Docker file
#
# to build : docker build -t imagename .
# to run : docker run -it --rm imagename
#

FROM debian:jessie
MAINTAINER Bjarne Sorensen <bjsdocker@ano.dk>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -qy \
    links 

RUN mkdir ~/.links2

ENTRYPOINT [ "links" ]

CMD ["http://google.com"]
