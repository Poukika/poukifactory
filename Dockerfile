FROM cm2network/steamcmd:latest

EXPOSE 7777/udp
EXPOSE 15000/udp
EXPOSE 15777/udp

RUN ./steamcmd.sh \
       +force_install_dir /home/steam/satisfactory-dedicated \
       +@sSteamCmdForcePlatformBitness 64 \
       +login anonymous \
       +app_update 1690800 -beta public validate \
       +quit

WORKDIR ../satisfactory-dedicated

RUN ./FactoryServer.sh \
      -multihome=192.168.1.4 \
      -ServerQueryPort=15777 \
      -BeaconPort=15000 \
      -Port=7777 \
      -log \
      -unattended \
      -DisablePacketRouting \
      -DisableSeasonalEvents \
