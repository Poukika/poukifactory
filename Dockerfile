FROM cm2network/steamcmd:latest

USER steam:steam

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
ENV GAMESAVESDIR="/home/steam/.config/Epic/FactoryGame/Saved/SaveGames"

COPY --chown=steam:steam init.sh "/home/steam/"

RUN mkdir -p "/home/steam/config"

ENTRYPOINT [ "bash", "/home/steam/init.sh" ]
