FROM python:3
MAINTAINER kahooli <kahooli@cavanaghs.id.au>

# install script & its requirements
RUN git clone https://github.com/haijeploeg/exclude_streaming_radarr.git /script
WORKDIR /script
RUN pip install -r requirements.txt

CMD ["python", "exclude_streaming_from_radarr.py", "-d"]
