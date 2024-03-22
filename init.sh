#!/bin/bash

mkdir -p \
    "${HOME}/config/backups" \
    "${HOME}/config/gamefiles" \
    "${HOME}/config/overrides" \
    "${HOME}/config/saved/blueprints" \
    "${HOME}/config/saved/server" \
    "${GAMECONFIGDIR}/Config/LinuxServer" \
    "${GAMECONFIGDIR}/Logs"

./steamcmd.sh \
  +force_install_dir "$HOME"/config/gamefiles \
  +@sSteamCmdForcePlatformBitness 64 \
  +@sSteamCmdForcePlatformType linux \
  +login "$STEAMUSER" \
  +app_update "$STEAMAPPID" -beta public validate \
  +quit

cd "${HOME}/config/gamefiles" || exit 1

exec ./FactoryServer.sh \
  -multihome="$SERVERIP" \
  -ServerQueryPort="$SERVERQUERYPORT" \
  -BeaconPort="$BEACONPORT" \
  -Port="$PORT" \
  -unattended \
  -DisablePacketRouting
