## -*- docker-image-name: "mcreations/postgres" -*-

FROM registry.opensource.zalan.do/acid/spilo-12:1.6-p3
MAINTAINER Kambiz Darabi <darabi@m-creations.net>

ADD image/root/ /

RUN if [ -d /usr/lib/postgresql/11/lib ] ; then \
        mv /tmp/pg-extensions/11/*so /usr/lib/postgresql/11/lib ; \
        mv /tmp/pg-extensions/11/* /usr/share/postgresql/11/extension ; \
    fi &&\
    if [ -d /usr/lib/postgresql/12/lib ] ; then \
        mv /tmp/pg-extensions/12/*so /usr/lib/postgresql/12/lib ; \
        mv /tmp/pg-extensions/12/* /usr/share/postgresql/12/extension ; \
    fi
