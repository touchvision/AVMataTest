#! /bin/sh
gcc simplest_ffmpeg_player_su.cpp -g -o simplest_ffmpeg_player_su.out -I /home/syberos/lcc/ffmpeg/ffmpeg-3.4.8/  -L /home/syberos/lcc/ffmpeg/build_out/lib \
-lSDL2main -lSDL2 -lavformat -lavcodec -lavutil -lswscale
