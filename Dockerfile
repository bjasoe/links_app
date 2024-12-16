#
# Builds container to capture the links application
# 
# 2024-12-26 BJS : Bump
# 2015-03-11 BJS : Created and tested Docker file
#
# to build : docker build -t imagename .
# to run : docker run -it --rm imagename
#

FROM debian:stable-slim as stage1
LABEL Bjarne Sorensen <bjsdocker@ano.dk>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get -y upgrade


FROM stage1
RUN apt-get install -qy \
    links 

RUN mkdir ~/.links2

ENTRYPOINT [ "links" ]

CMD ["http://google.com"]
