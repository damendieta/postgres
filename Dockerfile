FROM postgres:12.5
RUN localedef -i es_EC -c -f UTF-8 -A /usr/share/locale/locale.alias es_EC.UTF-8
ENV LANG es_EC.utf8
RUN apt-get update \
    && apt-get install -y \
        postgresql-12-postgis-3 \
	postgis
RUN usermod -u 1500 postgres
RUN groupmod -g 1500 postgres

