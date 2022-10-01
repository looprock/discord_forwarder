# discord_forwarder
A simple CLI for posting messages to a discord channel

# usage
This script was designed to be used with github actions, hence the somewhat odd decision to make everything environment variables.

First you need to create a bot account. Instructions can be found here: https://discordpy.readthedocs.io/en/latest/discord.html

Set the environment variables:

*DF_TOKEN* - Discord OAUTH Token

*DF_CHANNELS* - a comma separated list of channels to post the message to

*DF_MESSAGE* - the message you want to send

From docker, something like:

```
docker run -e DF_TOKEN=YouRSeCrEtTokeN -e DF_CHANNELS="8944734637383939393727, 8474636338374746" -e DF_MESSAGE="Hello World" webuildevops/discord_forwarder:latest
```

# github actions usage

```
      - name: send a discord message
        uses: docker://webuilddevops/discord_forwarder
        env:
          DF_TOKEN: ${{ secrets.DISCORD_FORWARDER_TOKEN }}
          DF_CHANNELS: "8944734637383939393727, 8474636338374746"
          DF_MESSAGE: Good news, a new release was pushed: https://github.com/user/repo/actions/runs/${{ github.run_id }}
```
