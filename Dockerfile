FROM ubuntu:24.04

# Prolog + {log}
RUN apt-get update && \
    apt-get install -y --no-install-recommends software-properties-common gnupg curl unzip && \
    rm -rf /var/lib/apt/lists/*

RUN apt-add-repository ppa:swi-prolog/stable && \
    apt-get update && \
    apt-get install -y --no-install-recommends swi-prolog

    
RUN curl https://www.clpset.unipr.it/SETLOG/setlog498-15h.zip --output setlog.zip && \
    unzip -d setlog setlog.zip 

# Java + fastest
RUN add-apt-repository ppa:openjdk-r/ppa && \
    apt-get update && \
    apt-get install -y --no-install-recommends openjdk-11-jdk

RUN curl https://fceia.unr.edu.ar/~mcristia/fastest-1.7.zip --output fastest.zip && \
    unzip fastest.zip

WORKDIR /workspace

CMD ["/bin/sh"]