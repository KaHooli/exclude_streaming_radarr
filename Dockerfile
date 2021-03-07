FROM python:3
MAINTAINER kahooli <kahooli@cavanaghs.id.au>

WORKDIR /usr/src/app

# install git
RUN \
  apt-get update && \
  apt-get install -y \
    cron \
    git \
    wget

# install script & its requirements
RUN git clone https://github.com/haijeploeg/exclude_streaming_radarr.git /script
RUN pip install -r /script/requirements.txt

CMD [ "python", "/script/exclude_streaming_from_radarr.py" ]
