FROM cm2network/steamcmd:latest

RUN ./steamcmd.sh \
       +force_install_dir /home/steam/satisfactory-dedicated \
       +@sSteamCmdForcePlatformBitness 64 \
       +login anonymous \
       +app_update 1690800 -beta public validate \
       +quit

WORKDIR ../satisfactory-dedicated

