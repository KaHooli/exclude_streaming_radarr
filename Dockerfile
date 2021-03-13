FROM python:3

LABEL maintainer="KaHooli <kahooli@cavanaghs.id.au>"
LABEL description="Uses the script from https://github.com/haijeploeg/exclude_streaming_radarr to find movies on Radarr that are also on your subscribed streaming services.  If they are, the script can stops the movie from being downloaded again and can remove it from storage."

# Install script & its requirements
RUN git clone https://github.com/haijeploeg/exclude_streaming_radarr.git /script
WORKDIR /script
RUN pip install -r requirements.txt

CMD [ "python", "exclude_streaming_from_radarr.py" ]
