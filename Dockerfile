FROM debian
LABEL maintainer="jason@jasongwartz.com"

RUN apt-get update
RUN apt-get -y install mono-complete libcurl4-openssl-dev
RUN apt-get -y install wget
RUN wget -O /ckan.exe https://github.com/KSP-CKAN/CKAN/releases/download/v1.22.3/ckan.exe
RUN mkdir /kerbal

COPY $PWD/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

CMD bash
