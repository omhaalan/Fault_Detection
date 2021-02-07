#! /bin/sh

cd /home/adrian/.fgfs

#setenv LD_LIBRARY_PATH /home/adrian/.fgfs/lib:$LD_LIBRARY_PATH
#setenv FG_ROOT /home/adrian/.fgfs/data
#setenv FG_SCENERY /home/adrian/.fgfs/Scenery:$FG_ROOT/Scenery:$FG_ROOT/WorldScenery

fgfs \
    --aircraft=Rascal110-JSBSim \
    --native-fdm=socket,in,50,localhost,5600,udp \
    --fdm=null \
    --disable-clouds \
    --start-date-lat=2004:06:01:09:00:00 \
    --disable-sound \
    --in-air \
    --enable-freeze \
    --airport=KSFO \
    --runway=10L \
    --altitude=7224 \
    --heading=113 \
    --offset-distance=4.72 \
    --offset-azimuth=0 \
	\
    --disable-anti-alias-hud \
    --disable-hud-3d \
    --disable-horizon-effect \
    --disable-sound \
    --disable-fullscreen \
    --disable-random-objects \
    --disable-ai-models \
    --fog-disable \
    --disable-specular-highlight \
    --disable-anti-alias-hud \
    --wind=0@0 \
#    --fdm=network,localhost,5501,5502,5503 \
