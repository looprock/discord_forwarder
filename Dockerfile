FROM python:3.10-slim

COPY discord_forwarder /usr/bin/discord_forwarder

RUN pip install requests \
&& chmod +x /usr/bin/discord_forwarder
