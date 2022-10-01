# discord_forwarder
A simple CLI for posting messages to a discord channel

# usage

discord_forwarder [comma separated list of channel IDs] [message]

From docker, something like:

docker run -e BOT_TOKEN=YouRSeCrEtTokeN discord_forwarder:latest discord_forwarder 8944734637383939393727 "Hello World"
