## -*- docker-image-name: "mcreations/postgres" -*-

FROM postgres:11

MAINTAINER Kambiz Darabi <darabi@m-creations.net>

VOLUME /data/

ENV PGDATA=/data

ADD image/root/ /

RUN mv /tmp/pg-extensions/*so /usr/lib/postgresql/$PG_MAJOR/lib &&\
    mv /tmp/pg-extensions/* /usr/share/postgresql/$PG_MAJOR/extension
