FROM ubuntu:latest
MAINTAINER kahooli <kahooli@cavanaghs.id.au>

# Install Python3, PIP & GIT
apt-get update && apt-get install python3-pip git -y

# Install script & it's requirements
RUN git clone https://github.com/haijeploeg/exclude_streaming_radarr.git /script
RUN pip3 install -r /script/requirements.txt

CMD ["python3", "/script/exclude_streaming_from_radarr.py"]
