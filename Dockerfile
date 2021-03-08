FROM lsiobase/python:3.10
#RUN apk add --update python3 py3-pip python3-dev git cron

# install script & its requirements
RUN git clone https://github.com/haijeploeg/exclude_streaming_radarr.git /script
RUN pip install -r /script/requirements.txt

CMD ["python3", "/script/exclude_streaming_from_radarr.py"]
