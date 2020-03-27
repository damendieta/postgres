FROM postgres:12.2
RUN localedef -i de_DE -c -f UTF-8 -A /usr/share/locale/locale.alias de_DE.UTF-8
ENV LANG es_EC.utf8
RUN usermod -u 1500 postgres
RUN groupmod -g 1500 postgres
