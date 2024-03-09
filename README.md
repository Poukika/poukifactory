# Poukifactory

Dedicated-server for satisfactory

# Installation

### Build image docker
```docker build . -t pouki/satisfactory```

### Installer dedicated-server
```
    ./steamcmd.sh \
    +force_install_dir /home/steam/satisfactory-dedicated \
    +@sSteamCmdForcePlatformBitness 64 \
    +login anonymous \
    +app_update 1690800 -beta public validate \
    +quit
```

### Lancement serveur
#### Les ports sont en protocole UDP
```
    ./FactoryServer.sh
    -multihome=192.168.1.4
    -ServerQueryPort=15777 
    -BeaconPort=15000
    -Port=7777
    -log
    -unattended
    -DisablePacketRouting
    -DisableSeasonalEvents
    ```