FROM cm2network/steamcmd:latest

EXPOSE 7777/udp
EXPOSE 15000/udp
EXPOSE 15777/udp

ENV HOME="/home/steam"
ENV STEAMUSER="anonymous"
ENV SERVERIP="0.0.0.0"
ENV SERVERQUERYPORT="15777"
ENV BEACONPORT="15000"
ENV PORT="7777"
ENV STEAMAPPID="1690800"
ENV STEAMBETAFLAG="public"
ENV GAMECONFIGDIR="/home/steam/config/gamefiles/FactoryGame/Saved"

RUN mkdir -p /home/steam/config && chown steam:steam /home/steam/

COPY init.sh /

ENTRYPOINT [ "bash", "/init.sh" ]