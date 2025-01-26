FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends software-properties-common gnupg curl && \
    rm -rf /var/lib/apt/lists/*

RUN apt-add-repository ppa:swi-prolog/stable && \
    apt-get update && \
    apt-get install -y --no-install-recommends swi-prolog

    
RUN apt-get install -y --no-install-recommends unzip && \
    curl https://www.clpset.unipr.it/SETLOG/setlog498-15h.zip --output setlog.zip && \
    unzip -d setlog setlog.zip 
    
WORKDIR workspace

CMD ["/bin/sh"]