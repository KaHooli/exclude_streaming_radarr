FROM python
MAINTAINER kahooli <kahooli@cavanaghs.id.au>

# get git
RUN \
  apt-get update && \
  apt-get install -y \
    cron \
    git \
    wget

RUN git clone https://github.com/haijeploeg/exclude_streaming_radarr.git /scripts
RUN pip install -r /scripts/requirements.txt

