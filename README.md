# discord_forwarder
A simple CLI for posting messages to a discord channel

# usage
This script was designed to be used with github actions, hence the somewhat odd decision to make everything environment variables.

Set the environment variables:

*DF_TOKEN* - Discord OAUTH Token

*DF_CHANNELS* - a comma separated list of channels to post the message to

*DF_MESSAGE* - the message you want to send

From docker, something like:

docker run -e DF_TOKEN=YouRSeCrEtTokeN -e DF_CHANNELS="8944734637383939393727, 8474636338374746" -e DF_MESSAGE="Hello World" webuildevops/discord_forwarder:latest
