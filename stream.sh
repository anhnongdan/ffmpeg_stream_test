exec /root/ElementalTest/ffmpeg-3/ffmpeg \
-re -y -loglevel debug -f concat \
-i <(for i in {1..10}; do printf "file '%s'\n" /root/ElementalTest/Her.2013.720p.BluRay.x264.YIFY.mp4; done) \
-ar 16000 -ac 2 -acodec copy -vcodec copy -b:v 500k -b:a 96k -f mpegts \
udp://123.30.153.188:5004
